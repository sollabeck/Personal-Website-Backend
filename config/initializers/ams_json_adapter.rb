api_mime_types = %W(
application/vnd.api+json
text/x-json
application/json
)

Mime::Type.unregister :json
Mime::Type.register 'application/json', :json, api_mime_types
ActiveModel::Serializer.config.adapter = ActiveModelSerializers::Adapter::JsonApi
ActiveModelSerializers.config.key_transform = :camel_lower


