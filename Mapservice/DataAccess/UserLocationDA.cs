using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.SqlClient;
using System.Data;
using TestLogin.Models;

namespace DataAccessLayer
{
    public class UserLocationDA: IDisposable
    {
        public void Dispose()
        {
           
        }
        public List<UserComment> GetUserLocations(string term)
        {
            var list = GetUserLocations();

            return list.Where(x => (x.name.ToLower().Contains(term.ToLower()) || x.comment.ToLower().Contains(term.ToLower()))).ToList();
        }
        public List<UserComment> GetUserLocations()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.CreateDefault();
            try
            {
                System.Data.Common.DbCommand dbCommandWrapper = db.GetStoredProcCommand(Utility.Constant.SPSelectUserComments);

                
                var ds = db.ExecuteDataSet(dbCommandWrapper);

                var list = Utility.Util.getListDAL<UserComment>(ds.Tables[0]);
                list.ForEach(x => x.name = x.name.Split('@')[0]);
                return list;
            }
            catch
            {
                throw;
            }
            finally
            {
                db = null;
            }
            
        }
        public bool InsertUserComment(UserComment userComment)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.CreateDefault();
            try
            {
                System.Data.Common.DbCommand dbCommandWrapper = db.GetStoredProcCommand(Utility.Constant.SPInsertUserComments);

                db.AddInParameter(dbCommandWrapper, "@name", DbType.String, userComment.name == null ? DBNull.Value : (object)userComment.name);
                db.AddInParameter(dbCommandWrapper, "@lat", DbType.Decimal,  userComment.lat);
                db.AddInParameter(dbCommandWrapper, "@lng", DbType.Decimal,  userComment.lng);
                db.AddInParameter(dbCommandWrapper, "@comment", DbType.String, userComment.comment == null ? DBNull.Value : (object)userComment.comment);
                db.ExecuteNonQuery(dbCommandWrapper);
                return true;
            }
            catch
            {
                throw;
            }
            finally
            {
                db = null;
            }

        }
    }
}
