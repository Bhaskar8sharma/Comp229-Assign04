using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System.IO;

namespace Comp229_Assign04
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.getGames();
            }
        }
        private void getGames()
        {            
            var filePath = MapPath("~/App_Data/Assign04.json");
            if (File.Exists(filePath))
            {
                var jsonString = File.ReadAllText(filePath);
                var collection = JsonConvert.DeserializeObject<List<Mini>>(jsonString);
                var models = from selectModel in collection
                             select selectModel;
                gridView.DataSource = models;
                gridView.DataBind();
            }
        }
        protected void JsonGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string miniName = Request.QueryString["Mini"]; var filePath = MapPath("~/App_Data/Assign04.json");
            if (File.Exists(filePath))
            {
                var jsonString = File.ReadAllText(filePath);
                var collection = JsonConvert.DeserializeObject<List<Mini>>(jsonString);
                var modelsDelete = from delModel in collection where delModel.MiniName == miniName select delModel;
                foreach (var item in modelsDelete)
                {
                    collection.Remove(item);
                }
                this.getGames();
                Response.Redirect("Default.aspx");
            }
        }
    }
}