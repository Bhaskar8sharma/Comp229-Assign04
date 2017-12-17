using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;
using System.IO;
using Newtonsoft.Json;
using System.Data;

namespace Comp229_Assign04
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.getGames();
            }
        }
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        private void getGames()
        {
            string miniName = Request.QueryString["Mini"];
            var filePath = MapPath("~/App_Data/Assign04.json");
            if (File.Exists(filePath))
            {
                var jsonString = File.ReadAllText(filePath);
                var collection = JsonConvert.DeserializeObject<List<Mini>>(jsonString);
                var models = from selectModel in collection
                             where selectModel.MiniName == miniName
                             select selectModel;
                foreach (var item in models)
                {
                    MiniNameTextBox.Text = item.MiniName;
                    FactionTextBox.Text = item.faction;
                    RankTextBox.Text = Convert.ToString(item.rank);
                    BaseTextBox.Text = Convert.ToString(item._base);
                    SizeTextBox.Text = Convert.ToString(item.size);
                    DeploymentZoneTextBox.Text = item.deploymentZone;
                    MobilityTextBox.Text = Convert.ToString(item.mobility);
                    WillpowerTextBox.Text = Convert.ToString(item.willpower);
                    ResilianceTextBox.Text = Convert.ToString(item.resiliance);
                    WoundDateTextBox.Text = Convert.ToString(item.wounds);
                }
            }

        }
        protected void Svbtn_Click(object sender, EventArgs e)
        {

            this.save();
            Response.Redirect("~/Default.aspx");
        }
        public void save()
        {
            Mini mini = new Mini();
            mini.MiniName = MiniNameTextBox.Text;
            mini.faction = FactionTextBox.Text;
            mini.rank = Convert.ToInt32(RankTextBox.Text);
            mini._base = Convert.ToInt32(BaseTextBox.Text);
            mini.size = Convert.ToInt32(SizeTextBox.Text);
            mini.deploymentZone = DeploymentZoneTextBox.Text;
            mini.mobility = Convert.ToInt32(MobilityTextBox.Text);
            mini.willpower = Convert.ToInt32(WillpowerTextBox.Text);
            mini.resiliance = Convert.ToInt32(ResilianceTextBox.Text);
            var filepath = MapPath("~/App_Data/Assign04.json");
            string strng = File.ReadAllText(filepath);
            if (File.Exists(filepath))
            {

                var writedata = JsonConvert.DeserializeObject<List<Mini>>(strng);
                writedata.Add(mini);
                File.WriteAllText(filepath, JsonConvert.SerializeObject(writedata));
            }
        }
    }
}
