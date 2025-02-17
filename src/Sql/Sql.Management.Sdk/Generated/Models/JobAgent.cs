// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.Sql.Models
{
    using System.Linq;

    /// <summary>
    /// An Azure SQL job agent.
    /// </summary>
    [Microsoft.Rest.Serialization.JsonTransformation]
    public partial class JobAgent : TrackedResource
    {
        /// <summary>
        /// Initializes a new instance of the JobAgent class.
        /// </summary>
        public JobAgent()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the JobAgent class.
        /// </summary>

        /// <param name="id">Resource ID.
        /// </param>

        /// <param name="name">Resource name.
        /// </param>

        /// <param name="type">Resource type.
        /// </param>

        /// <param name="location">Resource location.
        /// </param>

        /// <param name="tags">Resource tags.
        /// </param>

        /// <param name="sku">The name and tier of the SKU.
        /// </param>

        /// <param name="databaseId">Resource ID of the database to store job metadata in.
        /// </param>

        /// <param name="state">The state of the job agent.
        /// Possible values include: 'Creating', 'Ready', 'Updating', 'Deleting',
        /// 'Disabled'</param>
        public JobAgent(string location, string id = default(string), string name = default(string), string type = default(string), System.Collections.Generic.IDictionary<string, string> tags = default(System.Collections.Generic.IDictionary<string, string>), Sku sku = default(Sku), string databaseId = default(string), string state = default(string))

        : base(location, id, name, type, tags)
        {
            this.Sku = sku;
            this.DatabaseId = databaseId;
            this.State = state;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets the name and tier of the SKU.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "sku")]
        public Sku Sku {get; set; }

        /// <summary>
        /// Gets or sets resource ID of the database to store job metadata in.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "properties.databaseId")]
        public string DatabaseId {get; set; }

        /// <summary>
        /// Gets the state of the job agent. Possible values include: &#39;Creating&#39;, &#39;Ready&#39;, &#39;Updating&#39;, &#39;Deleting&#39;, &#39;Disabled&#39;
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "properties.state")]
        public string State {get; private set; }
        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="Microsoft.Rest.ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public override void Validate()
        {
            base.Validate();
            if (this.Sku != null)
            {
                this.Sku.Validate();
            }


        }
    }
}