// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.DataFactory.Models
{
    using Microsoft.Rest;
    using Microsoft.Rest.Serialization;
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// Linked service for MongoDB Atlas data source.
    /// </summary>
    [Newtonsoft.Json.JsonObject("MongoDbAtlas")]
    [Rest.Serialization.JsonTransformation]
    public partial class MongoDbAtlasLinkedService : LinkedService
    {
        /// <summary>
        /// Initializes a new instance of the MongoDbAtlasLinkedService class.
        /// </summary>
        public MongoDbAtlasLinkedService()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the MongoDbAtlasLinkedService class.
        /// </summary>
        /// <param name="connectionString">The MongoDB Atlas connection string.
        /// Type: string, SecureString or AzureKeyVaultSecretReference. Type:
        /// string, SecureString or AzureKeyVaultSecretReference.</param>
        /// <param name="database">The name of the MongoDB Atlas database that
        /// you want to access. Type: string (or Expression with resultType
        /// string).</param>
        /// <param name="additionalProperties">Unmatched properties from the
        /// message are deserialized this collection</param>
        /// <param name="connectVia">The integration runtime reference.</param>
        /// <param name="description">Linked service description.</param>
        /// <param name="parameters">Parameters for linked service.</param>
        /// <param name="annotations">List of tags that can be used for
        /// describing the linked service.</param>
        /// <param name="driverVersion">The driver version that you want to
        /// choose. Allowed value are v1 and v2. Type: string (or Expression
        /// with resultType string).</param>
        public MongoDbAtlasLinkedService(object connectionString, object database, IDictionary<string, object> additionalProperties = default(IDictionary<string, object>), IntegrationRuntimeReference connectVia = default(IntegrationRuntimeReference), string description = default(string), IDictionary<string, ParameterSpecification> parameters = default(IDictionary<string, ParameterSpecification>), IList<object> annotations = default(IList<object>), object driverVersion = default(object))
            : base(additionalProperties, connectVia, description, parameters, annotations)
        {
            ConnectionString = connectionString;
            Database = database;
            DriverVersion = driverVersion;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the MongoDB Atlas connection string. Type: string,
        /// SecureString or AzureKeyVaultSecretReference. Type: string,
        /// SecureString or AzureKeyVaultSecretReference.
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.connectionString")]
        public object ConnectionString { get; set; }

        /// <summary>
        /// Gets or sets the name of the MongoDB Atlas database that you want
        /// to access. Type: string (or Expression with resultType string).
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.database")]
        public object Database { get; set; }

        /// <summary>
        /// Gets or sets the driver version that you want to choose. Allowed
        /// value are v1 and v2. Type: string (or Expression with resultType
        /// string).
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.driverVersion")]
        public object DriverVersion { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public override void Validate()
        {
            base.Validate();
            if (ConnectionString == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "ConnectionString");
            }
            if (Database == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Database");
            }
        }
    }
}
