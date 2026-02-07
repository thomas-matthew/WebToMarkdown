[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 230
* 1.8k](https://github.com/langchain-ai/docs "Go to repository")

* [Get started](https://reference.langchain.com/python/)
* [LangChain](https://reference.langchain.com/python/langchain/)
* [LangGraph](https://reference.langchain.com/python/langgraph/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)

  Integrations
  + [Community](https://reference.langchain.com/python/integrations/langchain_community/)
  + Packages




    Packages
    - [Anthropic](https://reference.langchain.com/python/integrations/langchain_anthropic/)
    - [Amazon Nova](https://reference.langchain.com/python/integrations/langchain_amazon_nova/)
    - [AstraDB](https://reference.langchain.com/python/integrations/langchain_astradb/)
    - AWS

      [AWS](https://reference.langchain.com/python/integrations/langchain_aws/)



      Table of contents
      * [langchain\_aws](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws)

        + [ChatBedrock](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config_specs)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_secrets)
          - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.cache)
          - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.verbose)
          - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.callbacks)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.metadata)
          - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.custom_get_token_ids)
          - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.client)
          - [bedrock\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bedrock_client)
          - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.region_name)
          - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.credentials_profile_name)
          - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_access_key_id)
          - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_secret_access_key)
          - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_session_token)
          - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config)
          - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.provider)
          - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.model_id)
          - [base\_model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.base_model_id)
          - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.model_kwargs)
          - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.endpoint_url)
          - [streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.streaming)
          - [guardrails](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.guardrails)
          - [service\_tier](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.service_tier)
          - [rate\_limiter](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.rate_limiter)
          - [disable\_streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.disable_streaming)
          - [output\_version](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.output_version)
          - [profile](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.profile)
          - [beta\_use\_converse\_api](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.beta_use_converse_api)
          - [stop\_sequences](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.stop_sequences)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_attributes)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__init__)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.configurable_alternatives)
          - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.set_verbose)
          - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.generate_prompt)
          - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.agenerate_prompt)
          - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.validate_environment)
          - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.generate)
          - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.agenerate)
          - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.dict)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_lc_namespace)
          - [build\_extra](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.build_extra)
          - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_num_tokens_from_messages)
          - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_num_tokens)
          - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_token_ids)
          - [set\_system\_prompt\_with\_tools](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.set_system_prompt_with_tools)
          - [bind\_tools](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bind_tools)
          - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_structured_output)
        + [ChatBedrockConverse](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config_specs)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_attributes)
          - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.cache)
          - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.verbose)
          - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.callbacks)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.metadata)
          - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.custom_get_token_ids)
          - [rate\_limiter](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.rate_limiter)
          - [disable\_streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.disable_streaming)
          - [output\_version](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.output_version)
          - [profile](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.profile)
          - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.client)
          - [bedrock\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bedrock_client)
          - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.model_id)
          - [base\_model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.base_model_id)
          - [system](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.system)
          - [max\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.max_tokens)
          - [stop\_sequences](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.stop_sequences)
          - [temperature](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.temperature)
          - [top\_p](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.top_p)
          - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.region_name)
          - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.credentials_profile_name)
          - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_access_key_id)
          - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_secret_access_key)
          - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_session_token)
          - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.provider)
          - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.endpoint_url)
          - [default\_headers](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.default_headers)
          - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config)
          - [guardrail\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.guardrail_config)
          - [additional\_model\_request\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.additional_model_request_fields)
          - [additional\_model\_response\_field\_paths](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.additional_model_response_field_paths)
          - [supports\_tool\_choice\_values](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.supports_tool_choice_values)
          - [request\_metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.request_metadata)
          - [guard\_last\_turn\_only](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.guard_last_turn_only)
          - [raw\_blocks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.raw_blocks)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_secrets)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__init__)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.configurable_alternatives)
          - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.set_verbose)
          - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.generate_prompt)
          - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.agenerate_prompt)
          - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_token_ids)
          - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_num_tokens)
          - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.generate)
          - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.agenerate)
          - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.dict)
          - [create\_cache\_point](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.create_cache_point)
          - [build\_extra](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.build_extra)
          - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.validate_environment)
          - [bind\_tools](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bind_tools)
          - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_structured_output)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_lc_namespace)
          - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_num_tokens_from_messages)
        + [BedrockRerank](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank)

          - [model\_arn](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.model_arn)
          - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.client)
          - [top\_n](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.top_n)
          - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.region_name)
          - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.credentials_profile_name)
          - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_access_key_id)
          - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_secret_access_key)
          - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_session_token)
          - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.endpoint_url)
          - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.config)
          - [acompress\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.acompress_documents)
          - [initialize\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.initialize_client)
          - [rerank](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.rerank)
          - [compress\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.compress_documents)
        + [BedrockEmbeddings](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings)

          - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.client)
          - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.region_name)
          - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.credentials_profile_name)
          - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_access_key_id)
          - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_secret_access_key)
          - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_session_token)
          - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.model_id)
          - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.model_kwargs)
          - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.provider)
          - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.endpoint_url)
          - [normalize](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.normalize)
          - [dimensions](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.dimensions)
          - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.config)
          - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.validate_environment)
          - [embed\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_documents)
          - [embed\_query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_query)
          - [aembed\_query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_query)
          - [aembed\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_documents)
          - [embed\_image](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_image)
          - [embed\_images](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_images)
          - [embed\_audio](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_audio)
          - [embed\_video](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_video)
          - [aembed\_image](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_image)
          - [aembed\_images](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_images)
          - [aembed\_audio](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_audio)
          - [aembed\_video](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_video)
        + [NeptuneAnalyticsGraph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph)

          - [get\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.get_schema)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.__init__)
          - [query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.query)
        + [NeptuneGraph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph)

          - [get\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.get_schema)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.__init__)
          - [query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.query)
        + [BedrockLLM](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config_specs)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_secrets)
          - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.cache)
          - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.verbose)
          - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.callbacks)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.metadata)
          - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.custom_get_token_ids)
          - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.client)
          - [bedrock\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.bedrock_client)
          - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.region_name)
          - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.credentials_profile_name)
          - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_access_key_id)
          - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_secret_access_key)
          - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_session_token)
          - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config)
          - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.provider)
          - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.model_id)
          - [base\_model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.base_model_id)
          - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.model_kwargs)
          - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.endpoint_url)
          - [streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.streaming)
          - [guardrails](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.guardrails)
          - [service\_tier](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.service_tier)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_attributes)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__init__)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.configurable_alternatives)
          - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.set_verbose)
          - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.generate_prompt)
          - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.agenerate_prompt)
          - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_structured_output)
          - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_num_tokens_from_messages)
          - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.validate_environment)
          - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.generate)
          - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.agenerate)
          - [\_\_str\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__str__)
          - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.dict)
          - [save](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.save)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_lc_namespace)
          - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_num_tokens)
          - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_token_ids)
        + [SagemakerEndpoint](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config_specs)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_secrets)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_attributes)
          - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.cache)
          - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.verbose)
          - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.callbacks)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.metadata)
          - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.custom_get_token_ids)
          - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.client)
          - [endpoint\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_name)
          - [inference\_component\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.inference_component_name)
          - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.region_name)
          - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.credentials_profile_name)
          - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_access_key_id)
          - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_secret_access_key)
          - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_session_token)
          - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config)
          - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_url)
          - [content\_handler](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.content_handler)
          - [streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.streaming)
          - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.model_kwargs)
          - [endpoint\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_kwargs)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__init__)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_lc_namespace)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.configurable_alternatives)
          - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.set_verbose)
          - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.generate_prompt)
          - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.agenerate_prompt)
          - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_structured_output)
          - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_token_ids)
          - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_num_tokens)
          - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_num_tokens_from_messages)
          - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.generate)
          - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.agenerate)
          - [\_\_str\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__str__)
          - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.dict)
          - [save](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.save)
          - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.validate_environment)
        + [AmazonKendraRetriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.config_specs)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_secrets)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_attributes)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.metadata)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__init__)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_lc_namespace)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.configurable_alternatives)
        + [AmazonKnowledgeBasesRetriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.config_specs)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_secrets)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_attributes)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.metadata)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__init__)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_lc_namespace)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.configurable_alternatives)
        + [AmazonS3VectorsRetriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever)

          - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.name)
          - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.InputType)
          - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.OutputType)
          - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.input_schema)
          - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.output_schema)
          - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.config_specs)
          - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_secrets)
          - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_attributes)
          - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.tags)
          - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.metadata)
          - [vectorstore](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.vectorstore)
          - [search\_type](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.search_type)
          - [search\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.search_kwargs)
          - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_name)
          - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_input_schema)
          - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_input_jsonschema)
          - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_output_schema)
          - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_output_jsonschema)
          - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.config_schema)
          - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_config_jsonschema)
          - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_graph)
          - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_prompts)
          - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__or__)
          - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__ror__)
          - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.pipe)
          - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.pick)
          - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.assign)
          - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.invoke)
          - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.ainvoke)
          - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.batch)
          - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.batch_as_completed)
          - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.abatch)
          - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.abatch_as_completed)
          - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.stream)
          - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream)
          - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream_log)
          - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream_events)
          - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.transform)
          - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.atransform)
          - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.bind)
          - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_config)
          - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_listeners)
          - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_alisteners)
          - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_types)
          - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_retry)
          - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.map)
          - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_fallbacks)
          - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.as_tool)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__init__)
          - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.is_lc_serializable)
          - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_lc_namespace)
          - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_id)
          - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.to_json)
          - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.to_json_not_implemented)
          - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.configurable_fields)
          - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.configurable_alternatives)
          - [validate\_search\_type](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.validate_search_type)
          - [add\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.add_documents)
          - [aadd\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.aadd_documents)
        + [InMemorySemanticCache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache)

          - [alookup](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.alookup)
          - [aupdate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.aupdate)
          - [aclear](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.aclear)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.__init__)
          - [clear](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.clear)
          - [lookup](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.lookup)
          - [update](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.update)
        + [InMemoryVectorStore](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore)

          - [embeddings](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.embeddings)
          - [schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.schema)
          - [get\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.get_by_ids)
          - [aget\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aget_by_ids)
          - [adelete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.adelete)
          - [aadd\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aadd_texts)
          - [add\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.add_documents)
          - [aadd\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aadd_documents)
          - [search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.search)
          - [asearch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asearch)
          - [asimilarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_with_score)
          - [similarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_with_relevance_scores)
          - [asimilarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_with_relevance_scores)
          - [asimilarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search)
          - [asimilarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_by_vector)
          - [amax\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.amax_marginal_relevance_search)
          - [max\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.max_marginal_relevance_search_by_vector)
          - [amax\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.amax_marginal_relevance_search_by_vector)
          - [from\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_documents)
          - [afrom\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.afrom_documents)
          - [afrom\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.afrom_texts)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.__init__)
          - [from\_texts\_return\_keys](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_texts_return_keys)
          - [from\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_texts)
          - [from\_existing\_index](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_existing_index)
          - [write\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.write_schema)
          - [delete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.delete)
          - [drop\_index](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.drop_index)
          - [add\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.add_texts)
          - [as\_retriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.as_retriever)
          - [similarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_with_score)
          - [similarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search)
          - [similarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_by_vector)
          - [max\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.max_marginal_relevance_search)
        + [AmazonS3Vectors](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors)

          - [embeddings](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.embeddings)
          - [aget\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aget_by_ids)
          - [adelete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.adelete)
          - [aadd\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aadd_texts)
          - [add\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.add_documents)
          - [aadd\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aadd_documents)
          - [search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.search)
          - [asearch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asearch)
          - [asimilarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_with_score)
          - [similarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_with_relevance_scores)
          - [asimilarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_with_relevance_scores)
          - [asimilarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search)
          - [asimilarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_by_vector)
          - [max\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.max_marginal_relevance_search)
          - [amax\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.amax_marginal_relevance_search)
          - [max\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.max_marginal_relevance_search_by_vector)
          - [amax\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.amax_marginal_relevance_search_by_vector)
          - [from\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.from_documents)
          - [afrom\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.afrom_documents)
          - [afrom\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.afrom_texts)
          - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.__init__)
          - [add\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.add_texts)
          - [delete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.delete)
          - [get\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.get_by_ids)
          - [similarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search)
          - [similarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_with_score)
          - [similarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_by_vector)
          - [as\_retriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.as_retriever)
          - [from\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.from_texts)
        + [create\_neptune\_opencypher\_qa\_chain](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.create_neptune_opencypher_qa_chain)
        + [create\_neptune\_sparql\_qa\_chain](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.create_neptune_sparql_qa_chain)
    - [Azure (Microsoft)](https://reference.langchain.com/python/integrations/langchain_azure/)
    - [Cerebras](https://reference.langchain.com/python/integrations/langchain_cerebras/)
    - [Chroma](https://reference.langchain.com/python/integrations/langchain_chroma/)
    - [Cohere](https://reference.langchain.com/python/integrations/langchain_cohere/)
    - [Db2](https://reference.langchain.com/python/integrations/langchain_db2/)
    - [DeepSeek](https://reference.langchain.com/python/integrations/langchain_deepseek/)
    - [Elasticsearch](https://reference.langchain.com/python/integrations/langchain_elasticsearch/)
    - [Exa](https://reference.langchain.com/python/integrations/langchain_exa/)
    - [Fireworks](https://reference.langchain.com/python/integrations/langchain_fireworks/)
    - [Google](https://reference.langchain.com/python/integrations/langchain_google/)
    - [Groq](https://reference.langchain.com/python/integrations/langchain_groq/)
    - [HuggingFace](https://reference.langchain.com/python/integrations/langchain_huggingface/)
    - [IBM](https://reference.langchain.com/python/integrations/langchain_ibm/)
    - [Milvus](https://reference.langchain.com/python/integrations/langchain_milvus/)
    - [Mistral AI](https://reference.langchain.com/python/integrations/langchain_mistralai/)
    - [MongoDB](https://langchain-mongodb.readthedocs.io/en/latest/index.html)
    - [Neo4J](https://reference.langchain.com/python/integrations/langchain_neo4j/)
    - [Nomic](https://reference.langchain.com/python/integrations/langchain_nomic/)
    - [Nvidia AI Endpoints](https://reference.langchain.com/python/integrations/langchain_nvidia_ai_endpoints/)
    - [Ollama](https://reference.langchain.com/python/integrations/langchain_ollama/)
    - [OpenAI](https://reference.langchain.com/python/integrations/langchain_openai/)
    - [Parallel](https://reference.langchain.com/python/integrations/langchain_parallel/)
    - [Perplexity](https://reference.langchain.com/python/integrations/langchain_perplexity/)
    - [Pinecone](https://reference.langchain.com/python/integrations/langchain_pinecone/)
    - [Postgres](https://reference.langchain.com/python/integrations/langchain_postgres/)
    - [Prompty](https://reference.langchain.com/python/integrations/langchain_prompty/)
    - [Qdrant](https://reference.langchain.com/python/integrations/langchain_qdrant/)
    - [Redis](https://reference.langchain.com/python/integrations/langchain_redis/)
    - [Sema4](https://reference.langchain.com/python/integrations/langchain_sema4/)
    - [Snowflake](https://reference.langchain.com/python/integrations/langchain_snowflake/)
    - [SQLServer](https://reference.langchain.com/python/integrations/langchain_sqlserver/)
    - [Tavily](https://reference.langchain.com/python/integrations/langchain_tavily/)
    - [Together](https://reference.langchain.com/python/integrations/langchain_together/)
    - [Unstructured](https://reference.langchain.com/python/integrations/langchain_unstructured/)
    - [Upstage](https://reference.langchain.com/python/integrations/langchain_upstage/)
    - [Weaviate](https://reference.langchain.com/python/integrations/langchain_weaviate/)
    - [xAI](https://reference.langchain.com/python/integrations/langchain_xai/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [langchain\_aws](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws)

  + [ChatBedrock](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config_specs)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_secrets)
    - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.cache)
    - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.verbose)
    - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.callbacks)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.metadata)
    - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.custom_get_token_ids)
    - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.client)
    - [bedrock\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bedrock_client)
    - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.region_name)
    - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.credentials_profile_name " credentials_profile_name")
    - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_access_key_id)
    - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_secret_access_key)
    - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_session_token)
    - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config)
    - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.provider)
    - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.model_id)
    - [base\_model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.base_model_id)
    - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.model_kwargs)
    - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.endpoint_url)
    - [streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.streaming)
    - [guardrails](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.guardrails)
    - [service\_tier](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.service_tier)
    - [rate\_limiter](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.rate_limiter)
    - [disable\_streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.disable_streaming)
    - [output\_version](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.output_version)
    - [profile](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.profile)
    - [beta\_use\_converse\_api](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.beta_use_converse_api)
    - [stop\_sequences](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.stop_sequences)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_attributes)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__init__)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.configurable_alternatives)
    - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.set_verbose)
    - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.generate_prompt)
    - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.agenerate_prompt)
    - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.validate_environment)
    - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.generate)
    - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.agenerate)
    - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.dict)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_lc_namespace)
    - [build\_extra](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.build_extra)
    - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_num_tokens_from_messages)
    - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_num_tokens)
    - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_token_ids)
    - [set\_system\_prompt\_with\_tools](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.set_system_prompt_with_tools)
    - [bind\_tools](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bind_tools)
    - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_structured_output)
  + [ChatBedrockConverse](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config_specs)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_attributes)
    - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.cache)
    - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.verbose)
    - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.callbacks)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.metadata)
    - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.custom_get_token_ids)
    - [rate\_limiter](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.rate_limiter)
    - [disable\_streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.disable_streaming)
    - [output\_version](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.output_version)
    - [profile](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.profile)
    - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.client)
    - [bedrock\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bedrock_client)
    - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.model_id)
    - [base\_model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.base_model_id)
    - [system](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.system)
    - [max\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.max_tokens)
    - [stop\_sequences](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.stop_sequences)
    - [temperature](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.temperature)
    - [top\_p](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.top_p)
    - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.region_name)
    - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.credentials_profile_name)
    - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_access_key_id)
    - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_secret_access_key)
    - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_session_token)
    - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.provider)
    - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.endpoint_url)
    - [default\_headers](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.default_headers)
    - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config)
    - [guardrail\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.guardrail_config)
    - [additional\_model\_request\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.additional_model_request_fields)
    - [additional\_model\_response\_field\_paths](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.additional_model_response_field_paths)
    - [supports\_tool\_choice\_values](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.supports_tool_choice_values)
    - [request\_metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.request_metadata)
    - [guard\_last\_turn\_only](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.guard_last_turn_only)
    - [raw\_blocks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.raw_blocks)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_secrets)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__init__)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.configurable_alternatives)
    - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.set_verbose)
    - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.generate_prompt)
    - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.agenerate_prompt)
    - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_token_ids)
    - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_num_tokens)
    - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.generate)
    - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.agenerate)
    - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.dict)
    - [create\_cache\_point](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.create_cache_point)
    - [build\_extra](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.build_extra)
    - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.validate_environment)
    - [bind\_tools](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bind_tools)
    - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_structured_output)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_lc_namespace)
    - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_num_tokens_from_messages)
  + [BedrockRerank](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank)

    - [model\_arn](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.model_arn)
    - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.client)
    - [top\_n](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.top_n)
    - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.region_name)
    - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.credentials_profile_name)
    - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_access_key_id)
    - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_secret_access_key)
    - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_session_token)
    - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.endpoint_url)
    - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.config)
    - [acompress\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.acompress_documents)
    - [initialize\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.initialize_client)
    - [rerank](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.rerank)
    - [compress\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.compress_documents)
  + [BedrockEmbeddings](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings)

    - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.client)
    - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.region_name)
    - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.credentials_profile_name)
    - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_access_key_id)
    - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_secret_access_key)
    - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_session_token)
    - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.model_id)
    - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.model_kwargs)
    - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.provider)
    - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.endpoint_url)
    - [normalize](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.normalize)
    - [dimensions](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.dimensions)
    - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.config)
    - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.validate_environment)
    - [embed\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_documents)
    - [embed\_query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_query)
    - [aembed\_query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_query)
    - [aembed\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_documents)
    - [embed\_image](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_image)
    - [embed\_images](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_images)
    - [embed\_audio](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_audio)
    - [embed\_video](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_video)
    - [aembed\_image](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_image)
    - [aembed\_images](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_images)
    - [aembed\_audio](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_audio)
    - [aembed\_video](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_video)
  + [NeptuneAnalyticsGraph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph)

    - [get\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.get_schema)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.__init__)
    - [query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.query)
  + [NeptuneGraph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph)

    - [get\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.get_schema)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.__init__)
    - [query](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.query)
  + [BedrockLLM](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config_specs)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_secrets)
    - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.cache)
    - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.verbose)
    - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.callbacks)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.metadata)
    - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.custom_get_token_ids)
    - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.client)
    - [bedrock\_client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.bedrock_client)
    - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.region_name)
    - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.credentials_profile_name)
    - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_access_key_id)
    - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_secret_access_key)
    - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_session_token)
    - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config)
    - [provider](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.provider)
    - [model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.model_id)
    - [base\_model\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.base_model_id)
    - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.model_kwargs)
    - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.endpoint_url)
    - [streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.streaming)
    - [guardrails](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.guardrails)
    - [service\_tier](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.service_tier)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_attributes)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__init__)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.configurable_alternatives)
    - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.set_verbose)
    - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.generate_prompt)
    - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.agenerate_prompt)
    - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_structured_output)
    - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_num_tokens_from_messages)
    - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.validate_environment)
    - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.generate)
    - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.agenerate)
    - [\_\_str\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__str__)
    - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.dict)
    - [save](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.save)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_lc_namespace)
    - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_num_tokens)
    - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_token_ids)
  + [SagemakerEndpoint](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config_specs)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_secrets)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_attributes)
    - [cache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.cache)
    - [verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.verbose)
    - [callbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.callbacks)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.metadata)
    - [custom\_get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.custom_get_token_ids)
    - [client](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.client)
    - [endpoint\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_name)
    - [inference\_component\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.inference_component_name)
    - [region\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.region_name)
    - [credentials\_profile\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.credentials_profile_name)
    - [aws\_access\_key\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_access_key_id)
    - [aws\_secret\_access\_key](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_secret_access_key)
    - [aws\_session\_token](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_session_token)
    - [config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config)
    - [endpoint\_url](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_url)
    - [content\_handler](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.content_handler)
    - [streaming](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.streaming)
    - [model\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.model_kwargs)
    - [endpoint\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_kwargs)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__init__)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_lc_namespace)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.configurable_alternatives)
    - [set\_verbose](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.set_verbose)
    - [generate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.generate_prompt)
    - [agenerate\_prompt](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.agenerate_prompt)
    - [with\_structured\_output](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_structured_output)
    - [get\_token\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_token_ids)
    - [get\_num\_tokens](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_num_tokens)
    - [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_num_tokens_from_messages)
    - [generate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.generate)
    - [agenerate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.agenerate)
    - [\_\_str\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__str__)
    - [dict](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.dict)
    - [save](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.save)
    - [validate\_environment](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.validate_environment)
  + [AmazonKendraRetriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.config_specs)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_secrets)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_attributes)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.metadata)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__init__)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_lc_namespace)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.configurable_alternatives)
  + [AmazonKnowledgeBasesRetriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.config_specs)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_secrets)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_attributes)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.metadata)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__init__)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_lc_namespace)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.configurable_alternatives)
  + [AmazonS3VectorsRetriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever)

    - [name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.name)
    - [InputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.InputType)
    - [OutputType](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.OutputType)
    - [input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.input_schema)
    - [output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.output_schema)
    - [config\_specs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.config_specs)
    - [lc\_secrets](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_secrets)
    - [lc\_attributes](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_attributes)
    - [tags](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.tags)
    - [metadata](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.metadata)
    - [vectorstore](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.vectorstore)
    - [search\_type](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.search_type)
    - [search\_kwargs](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.search_kwargs)
    - [get\_name](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_name)
    - [get\_input\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_input_schema)
    - [get\_input\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_input_jsonschema)
    - [get\_output\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_output_schema)
    - [get\_output\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_output_jsonschema)
    - [config\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.config_schema)
    - [get\_config\_jsonschema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_config_jsonschema)
    - [get\_graph](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_graph)
    - [get\_prompts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_prompts)
    - [\_\_or\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__or__)
    - [\_\_ror\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__ror__)
    - [pipe](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.pipe)
    - [pick](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.pick)
    - [assign](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.assign)
    - [invoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.invoke)
    - [ainvoke](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.ainvoke)
    - [batch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.batch)
    - [batch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.batch_as_completed)
    - [abatch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.abatch)
    - [abatch\_as\_completed](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.abatch_as_completed)
    - [stream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.stream)
    - [astream](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream)
    - [astream\_log](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream_log)
    - [astream\_events](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream_events)
    - [transform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.transform)
    - [atransform](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.atransform)
    - [bind](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.bind)
    - [with\_config](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_config)
    - [with\_listeners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_listeners)
    - [with\_alisteners](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_alisteners)
    - [with\_types](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_types)
    - [with\_retry](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_retry)
    - [map](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.map)
    - [with\_fallbacks](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_fallbacks)
    - [as\_tool](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.as_tool)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__init__)
    - [is\_lc\_serializable](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.is_lc_serializable)
    - [get\_lc\_namespace](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_lc_namespace)
    - [lc\_id](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_id)
    - [to\_json](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.to_json)
    - [to\_json\_not\_implemented](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.to_json_not_implemented)
    - [configurable\_fields](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.configurable_fields)
    - [configurable\_alternatives](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.configurable_alternatives)
    - [validate\_search\_type](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.validate_search_type)
    - [add\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.add_documents)
    - [aadd\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.aadd_documents)
  + [InMemorySemanticCache](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache)

    - [alookup](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.alookup)
    - [aupdate](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.aupdate)
    - [aclear](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.aclear)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.__init__)
    - [clear](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.clear)
    - [lookup](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.lookup)
    - [update](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.update)
  + [InMemoryVectorStore](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore)

    - [embeddings](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.embeddings)
    - [schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.schema)
    - [get\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.get_by_ids)
    - [aget\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aget_by_ids)
    - [adelete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.adelete)
    - [aadd\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aadd_texts)
    - [add\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.add_documents)
    - [aadd\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aadd_documents)
    - [search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.search)
    - [asearch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asearch)
    - [asimilarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_with_score)
    - [similarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_with_relevance_scores)
    - [asimilarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_with_relevance_scores)
    - [asimilarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search)
    - [asimilarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_by_vector)
    - [amax\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.amax_marginal_relevance_search)
    - [max\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.max_marginal_relevance_search_by_vector)
    - [amax\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.amax_marginal_relevance_search_by_vector)
    - [from\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_documents)
    - [afrom\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.afrom_documents)
    - [afrom\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.afrom_texts)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.__init__)
    - [from\_texts\_return\_keys](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_texts_return_keys)
    - [from\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_texts)
    - [from\_existing\_index](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_existing_index)
    - [write\_schema](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.write_schema)
    - [delete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.delete)
    - [drop\_index](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.drop_index)
    - [add\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.add_texts)
    - [as\_retriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.as_retriever)
    - [similarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_with_score)
    - [similarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search)
    - [similarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_by_vector)
    - [max\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.max_marginal_relevance_search)
  + [AmazonS3Vectors](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors)

    - [embeddings](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.embeddings)
    - [aget\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aget_by_ids)
    - [adelete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.adelete)
    - [aadd\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aadd_texts)
    - [add\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.add_documents)
    - [aadd\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aadd_documents)
    - [search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.search)
    - [asearch](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asearch)
    - [asimilarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_with_score)
    - [similarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_with_relevance_scores)
    - [asimilarity\_search\_with\_relevance\_scores](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_with_relevance_scores)
    - [asimilarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search)
    - [asimilarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_by_vector)
    - [max\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.max_marginal_relevance_search)
    - [amax\_marginal\_relevance\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.amax_marginal_relevance_search)
    - [max\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.max_marginal_relevance_search_by_vector)
    - [amax\_marginal\_relevance\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.amax_marginal_relevance_search_by_vector)
    - [from\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.from_documents)
    - [afrom\_documents](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.afrom_documents)
    - [afrom\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.afrom_texts)
    - [\_\_init\_\_](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.__init__)
    - [add\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.add_texts)
    - [delete](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.delete)
    - [get\_by\_ids](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.get_by_ids)
    - [similarity\_search](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search)
    - [similarity\_search\_with\_score](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_with_score)
    - [similarity\_search\_by\_vector](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_by_vector)
    - [as\_retriever](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.as_retriever)
    - [from\_texts](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.from_texts)
  + [create\_neptune\_opencypher\_qa\_chain](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.create_neptune_opencypher_qa_chain)
  + [create\_neptune\_sparql\_qa\_chain](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.create_neptune_sparql_qa_chain)

# `langchain-aws`[¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain-aws "Copy anchor link to this section for reference")

[![PyPI - Version](https://img.shields.io/pypi/v/langchain-aws?label=%20)](https://pypi.org/project/langchain-aws/#history)
[![PyPI - License](https://img.shields.io/pypi/l/langchain-aws)](https://opensource.org/licenses/MIT)
[![PyPI - Downloads](https://img.shields.io/pepy/dt/langchain-aws)](https://pypistats.org/packages/langchain-aws)

Note

This package ref has not yet been fully migrated to v1.

Reference docs

This page contains **reference documentation** for AWS. See [the docs](https://docs.langchain.com/oss/python/integrations/providers/aws) for conceptual guides, tutorials, and examples on using AWS modules.

## langchain\_aws [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws "Copy anchor link to this section for reference")

| FUNCTION | DESCRIPTION |
| --- | --- |
| `create_neptune_opencypher_qa_chain` | Chain for question-answering against a Neptune graph |
| `create_neptune_sparql_qa_chain` | Chain for question-answering against a Neptune graph |

### ChatBedrock [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock "Copy anchor link to this section for reference")

Bases: `BaseChatModel`, `BedrockBase`

A chat model that uses the Bedrock API.

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Transform a single input into an output. |
| `ainvoke` | Transform a single input into an output. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |
| `set_verbose` | If verbose is `None`, set it. |
| `generate_prompt` | Pass a sequence of prompts to the model and return model generations. |
| `agenerate_prompt` | Asynchronously pass a sequence of prompts and return model generations. |
| `validate_environment` | Validate that AWS credentials to and python package exists in environment. |
| `generate` | Pass a sequence of prompts to the model and return model generations. |
| `agenerate` | Asynchronously pass a sequence of prompts to a model and return generations. |
| `dict` | Return a dictionary of the LLM. |
| `is_lc_serializable` | Return whether this model can be serialized by Langchain. |
| `get_lc_namespace` | Get the namespace of the langchain object. |
| `build_extra` | Build extra kwargs from additional params that were passed in. |
| `get_num_tokens_from_messages` | Get the number of tokens in the messages. |
| `get_num_tokens` | Get the number of tokens present in the text. |
| `get_token_ids` | Return the ordered IDs of the tokens in a text. |
| `set_system_prompt_with_tools` | Workaround to bind. Sets the system prompt with tools |
| `bind_tools` | Bind tool-like objects to this chat model. |
| `with_structured_output` | Model wrapper that returns outputs formatted to match the given schema. |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.InputType "Copy anchor link to this section for reference")

```
InputType: TypeAlias
```

Get the input type for this `Runnable`.

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.OutputType "Copy anchor link to this section for reference")

```
OutputType: Any
```

Get the output type for this `Runnable`.

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### cache `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.cache "Copy anchor link to this section for reference")

```
cache: BaseCache | bool | None = Field(default=None, exclude=True)
```

Whether to cache the response.

* If `True`, will use the global cache.
* If `False`, will not use a cache
* If `None`, will use the global cache if it's set, otherwise no cache.
* If instance of `BaseCache`, will use the provided cache.

Caching is not currently supported for streaming methods of models.

#### verbose `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.verbose "Copy anchor link to this section for reference")

```
verbose: bool = Field(default_factory=_get_verbosity, exclude=True, repr=False)
```

Whether to print out response text.

#### callbacks `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.callbacks "Copy anchor link to this section for reference")

```
callbacks: Callbacks = Field(default=None, exclude=True)
```

Callbacks to add to the run trace.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = Field(default=None, exclude=True)
```

Tags to add to the run trace.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = Field(default=None, exclude=True)
```

Metadata to add to the run trace.

#### custom\_get\_token\_ids `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.custom_get_token_ids "Copy anchor link to this section for reference")

```
custom_get_token_ids: Callable[[str], list[int]] | None = Field(
    default=None, exclude=True
)
```

Optional encoder to use for counting tokens.

#### client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.client "Copy anchor link to this section for reference")

```
client: Any = Field(default=None, exclude=True)
```

The bedrock runtime client for making data plane API calls

#### bedrock\_client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bedrock_client "Copy anchor link to this section for reference")

```
bedrock_client: Any = Field(default=None, exclude=True)
```

The bedrock client for making control plane API calls

#### region\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.region_name "Copy anchor link to this section for reference")

```
region_name: str | None = Field(default=None, alias='region')
```

The aws region e.g., `us-west-2`. Falls back to `AWS_REGION` or
`AWS_DEFAULT_REGION` env variable or region specified in `~/.aws/config` in
case it is not provided here.

#### credentials\_profile\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.credentials_profile_name "Copy anchor link to this section for reference")

```
credentials_profile_name: str | None = Field(default=None, exclude=True)
```

The name of the profile in the `~/.aws/credentials` or `~/.aws/config files`,
which has either access keys or role information specified.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

#### aws\_access\_key\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_access_key_id "Copy anchor link to this section for reference")

```
aws_access_key_id: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_ACCESS_KEY_ID", default=None)
)
```

AWS access key id.

If provided, `aws_secret_access_key` must also be provided.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.

#### aws\_secret\_access\_key `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_secret_access_key "Copy anchor link to this section for reference")

```
aws_secret_access_key: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SECRET_ACCESS_KEY", default=None)
)
```

AWS `secret_access_key`.

If provided, `aws_access_key_id` must also be provided.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.

#### aws\_session\_token `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.aws_session_token "Copy anchor link to this section for reference")

```
aws_session_token: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SESSION_TOKEN", default=None)
)
```

AWS session token.

If provided, `aws_access_key_id` and `aws_secret_access_key` must also be
provided.

Not required unless using temporary credentials.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.

#### config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config "Copy anchor link to this section for reference")

```
config: Any = None
```

An optional `botocore.config.Config` instance to pass to the client.

#### provider `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.provider "Copy anchor link to this section for reference")

```
provider: str | None = None
```

The model provider, e.g., `'amazon'`, `'cohere'`, `'ai21'`, etc. When not
supplied, provider is extracted from the first part of the model\_id e.g.
`'amazon'` in `'amazon.titan-text-express-v1'`. This value should be provided
for model IDs that do not have the provider in them, e.g., custom and provisioned
models that have an ARN associated with them.

#### model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.model_id "Copy anchor link to this section for reference")

```
model_id: str = Field(alias='model')
```

Id of the model to call, e.g., `'amazon.titan-text-express-v1'`, this is
equivalent to the `modelId` property in the list-foundation-models api. For custom
and provisioned models, an ARN value is expected.

#### base\_model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.base_model_id "Copy anchor link to this section for reference")

```
base_model_id: str | None = Field(default=None, alias='base_model')
```

An optional field to pass the base model id. If provided, this will be used over
the value of `model_id` to identify the base model.

#### model\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.model_kwargs "Copy anchor link to this section for reference")

```
model_kwargs: dict[str, Any] | None = None
```

Keyword arguments to pass to the model.

#### endpoint\_url `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.endpoint_url "Copy anchor link to this section for reference")

```
endpoint_url: str | None = None
```

Needed if you don't want to default to `'us-east-1'` endpoint

#### streaming `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.streaming "Copy anchor link to this section for reference")

```
streaming: bool = False
```

Whether to stream the results.

#### guardrails `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.guardrails "Copy anchor link to this section for reference")

```
guardrails: Mapping[str, Any] | None = {
    "trace": None,
    "guardrailIdentifier": None,
    "guardrailVersion": None,
}
```

An optional dictionary to configure guardrails for Bedrock.

This field `guardrails` consists of two keys: `'guardrailId'` and
`'guardrailVersion'`, which should be strings, but are initialized to None.

It's used to determine if specific guardrails are enabled and properly set.

Type

Optional[Mapping[str, str]]: A mapping with 'guardrailId' and
'guardrailVersion' keys.


Example

```
llm = BedrockLLM(model_id="<model_id>", client=<bedrock_client>,
    model_kwargs={},
    guardrails={
            "guardrailId": "<guardrail_id>",
            "guardrailVersion": "<guardrail_version>"})
```

To enable tracing for guardrails, set the 'trace' key to True and pass a callback handler to the
'run\_manager' parameter of the 'generate', '\_call' methods.

Example

```
llm = BedrockLLM(model_id="<model_id>", client=<bedrock_client>,
    model_kwargs={},
    guardrails={
            "guardrailId": "<guardrail_id>",
            "guardrailVersion": "<guardrail_version>",
            "trace": True},
    callbacks=[BedrockAsyncCallbackHandler()])
```

<https://python.langchain.com/docs/concepts/callbacks/> for more information on callback handlers.

class BedrockAsyncCallbackHandler(AsyncCallbackHandler):
async def on\_llm\_error(
self,
error: BaseException,
\*\*kwargs: Any,
) -> Any:
reason = kwargs.get("reason")
if reason == "GUARDRAIL\_INTERVENED":
...Logic to handle guardrail intervention...

#### service\_tier `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.service_tier "Copy anchor link to this section for reference")

```
service_tier: Literal['priority', 'default', 'flex', 'reserved'] | None = None
```

Service tier for model invocation.

Specifies the processing tier type used for serving the request.
Supported values are 'priority', 'default', 'flex', and 'reserved'.

* 'priority': Prioritized processing for lower latency
* 'default': Standard processing tier
* 'flex': Flexible processing tier with lower cost
* 'reserved': Reserved capacity for consistent performance

If not provided, AWS uses the default tier.

#### rate\_limiter `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.rate_limiter "Copy anchor link to this section for reference")

```
rate_limiter: BaseRateLimiter | None = Field(default=None, exclude=True)
```

An optional rate limiter to use for limiting the number of requests.

#### disable\_streaming `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.disable_streaming "Copy anchor link to this section for reference")

```
disable_streaming: bool | Literal['tool_calling'] = False
```

Whether to disable streaming for this model.

If streaming is bypassed, then `stream`/`astream`/`astream_events` will
defer to `invoke`/`ainvoke`.

* If `True`, will always bypass streaming case.
* If `'tool_calling'`, will bypass streaming case only when the model is called
  with a `tools` keyword argument. In other words, LangChain will automatically
  switch to non-streaming behavior (`invoke`) only when the tools argument is
  provided. This offers the best of both worlds.
* If `False` (Default), will always use streaming case if available.

The main reason for this flag is that code might be written using `stream` and
a user may want to swap out a given model for another model whose the implementation
does not properly support streaming.

#### output\_version `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.output_version "Copy anchor link to this section for reference")

```
output_version: str | None = Field(
    default_factory=from_env("LC_OUTPUT_VERSION", default=None)
)
```

Version of `AIMessage` output format to store in message content.

`AIMessage.content_blocks` will lazily parse the contents of `content` into a
standard format. This flag can be used to additionally store the standard format
in message content, e.g., for serialization purposes.

Supported values:

* `'v0'`: provider-specific format in content (can lazily-parse with
  `content_blocks`)
* `'v1'`: standardized format in content (consistent with `content_blocks`)

Partner packages (e.g.,
[`langchain-openai`](https://pypi.org/project/langchain-openai)) can also use this
field to roll out new content formats in a backward-compatible way.

Added in `langchain-core` 1.0.0

#### profile `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.profile "Copy anchor link to this section for reference")

```
profile: ModelProfile | None = Field(default=None, exclude=True)
```

Profile detailing model capabilities.

Beta feature

This is a beta feature. The format of model profiles is subject to change.

If not specified, automatically loaded from the provider package on initialization
if data is available.

Example profile data includes context window sizes, supported modalities, or support
for tool calling, structured output, and other features.

Added in `langchain-core` 1.1.0

#### beta\_use\_converse\_api `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.beta_use_converse_api "Copy anchor link to this section for reference")

```
beta_use_converse_api: bool = False
```

Use the new Bedrock `converse` API which provides a standardized interface to
all Bedrock models. Support still in beta. See ChatBedrockConverse docs for more.

#### stop\_sequences `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.stop_sequences "Copy anchor link to this section for reference")

```
stop_sequences: list[str] | None = Field(default=None, alias='stop')
```

Stop sequence inference parameter from new Bedrock `converse` API providing
a sequence of characters that causes a model to stop generating a response. See
<https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_InferenceConfiguration.html>
for more.

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict[str, Any]
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AIMessage
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AIMessage
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.stream "Copy anchor link to this section for reference")

```
stream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> Iterator[AIMessageChunk]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream "Copy anchor link to this section for reference")

```
astream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[AIMessageChunk]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

#### set\_verbose [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.set_verbose "Copy anchor link to this section for reference")

```
set_verbose(verbose: bool | None) -> bool
```

If verbose is `None`, set it.

This allows users to pass in `None` as verbose to access the global setting.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `verbose` | The verbosity setting to use.  **TYPE:** `bool | None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | The verbosity setting to use. |

#### generate\_prompt [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.generate_prompt "Copy anchor link to this section for reference")

```
generate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to the model and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### agenerate\_prompt `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.agenerate_prompt "Copy anchor link to this section for reference")

```
agenerate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### validate\_environment [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.validate_environment "Copy anchor link to this section for reference")

```
validate_environment() -> Self
```

Validate that AWS credentials to and python package exists in environment.

#### generate [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.generate "Copy anchor link to this section for reference")

```
generate(
    messages: list[list[BaseMessage]],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    *,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    run_name: str | None = None,
    run_id: UUID | None = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to the model and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | List of list of messages.  **TYPE:** `list[list[BaseMessage]]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `tags` | The tags to apply.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata to apply.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `run_name` | The name of the run.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### agenerate `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.agenerate "Copy anchor link to this section for reference")

```
agenerate(
    messages: list[list[BaseMessage]],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    *,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    run_name: str | None = None,
    run_id: UUID | None = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts to a model and return generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | List of list of messages.  **TYPE:** `list[list[BaseMessage]]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `tags` | The tags to apply.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata to apply.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `run_name` | The name of the run.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### dict [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.dict "Copy anchor link to this section for reference")

```
dict(**kwargs: Any) -> dict
```

Return a dictionary of the LLM.

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Return whether this model can be serialized by Langchain.

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the langchain object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | `["langchain", "chat_models", "bedrock"]` |

#### build\_extra `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.build_extra "Copy anchor link to this section for reference")

```
build_extra(values: dict[str, Any]) -> Any
```

Build extra kwargs from additional params that were passed in.

#### get\_num\_tokens\_from\_messages [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_num_tokens_from_messages "Copy anchor link to this section for reference")

```
get_num_tokens_from_messages(
    messages: list[BaseMessage], tools: Sequence | None = None
) -> int
```

Get the number of tokens in the messages.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

Note

* The base implementation of `get_num_tokens_from_messages` ignores tool
  schemas.
* The base implementation of `get_num_tokens_from_messages` adds additional
  prefixes to messages in represent user roles, which will add to the
  overall token count. Model-specific implementations may choose to
  handle this differently.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | The message inputs to tokenize.  **TYPE:** `list[BaseMessage]` |
| `tools` | If provided, sequence of dict, `BaseModel`, function, or `BaseTool` objects to be converted to tool schemas.  **TYPE:** `Sequence | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The sum of the number of tokens across the messages. |

#### get\_num\_tokens [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_num_tokens "Copy anchor link to this section for reference")

```
get_num_tokens(text: str) -> int
```

Get the number of tokens present in the text.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The integer number of tokens in the text. |

#### get\_token\_ids [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.get_token_ids "Copy anchor link to this section for reference")

```
get_token_ids(text: str) -> list[int]
```

Return the ordered IDs of the tokens in a text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[int]` | A list of IDs corresponding to the tokens in the text, in order they occur in the text. |

#### set\_system\_prompt\_with\_tools [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.set_system_prompt_with_tools "Copy anchor link to this section for reference")

```
set_system_prompt_with_tools(xml_tools_system_prompt: str) -> None
```

Workaround to bind. Sets the system prompt with tools

#### bind\_tools [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.bind_tools "Copy anchor link to this section for reference")

```
bind_tools(
    tools: Sequence[dict[str, Any] | TypeBaseModel | Callable | BaseTool],
    *,
    tool_choice: dict | str | Literal["auto", "none"] | bool | None = None,
    **kwargs: Any,
) -> Runnable[LanguageModelInput, AIMessage]
```

Bind tool-like objects to this chat model.

Assumes model has a tool calling API.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `tools` | A list of tool definitions to bind to this chat model. Can be a dictionary, pydantic model, callable, or BaseTool. Pydantic models, callables, and BaseTools will be automatically converted to their schema dictionary representation.  **TYPE:** `Sequence[dict[str, Any] | TypeBaseModel | Callable | BaseTool]` |
| `tool_choice` | Which tool to require the model to call. Must be the name of the single provided function or "auto" to automatically determine which function to call (if any), or a dict of the form: {"type": "function", "function": {"name": <>}}.  **TYPE:** `dict | str | Literal['auto', 'none'] | bool | None`  **DEFAULT:** `None` |
| `**kwargs` | Any additional parameters to pass to the [Runnable](https://reference.langchain.com/python/langchain_core/runnables/#langchain_core.runnables.base.Runnable "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">Runnable</span>") constructor.  **TYPE:** `Any`  **DEFAULT:** `{}` |

#### with\_structured\_output [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrock.with_structured_output "Copy anchor link to this section for reference")

```
with_structured_output(
    schema: dict[str, Any] | TypeBaseModel | Type,
    *,
    include_raw: bool = False,
    **kwargs: Any,
) -> Runnable[LanguageModelInput, dict | BaseModel]
```

Model wrapper that returns outputs formatted to match the given schema.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `schema` | The output schema as a dict or a Pydantic class. If a Pydantic class then the model output will be an object of that class. If a dict then the model output will be a dict. With a Pydantic class the returned attributes will be validated, whereas with a dict they will not be.  **TYPE:** `dict[str, Any] | TypeBaseModel | Type` |
| `include_raw` | If `False` then only the parsed structured output is returned.  If an error occurs during model output parsing it will be raised.  If `True` then both the raw model response (a `BaseMessage`) and the parsed model response will be returned.  If an error occurs during output parsing it will be caught and returned as well.  The final output is always a `dict` with keys `'raw'`, `'parsed'`, and `'parsing_error'`.  **TYPE:** `bool`  **DEFAULT:** `False` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[LanguageModelInput, dict | BaseModel]` | A Runnable that takes any ChatModel input. The output type depends on |
| `Runnable[LanguageModelInput, dict | BaseModel]` | include\_raw and schema. |
| `Runnable[LanguageModelInput, dict | BaseModel]` | If include\_raw is True then output is a dict with keys: raw: BaseMessage, parsed: Optional[\_DictOrPydantic], parsing\_error: Optional[BaseException], |
| `Runnable[LanguageModelInput, dict | BaseModel]` | If include\_raw is False and schema is a Dict then the runnable outputs a Dict. |
| `Runnable[LanguageModelInput, dict | BaseModel]` | If include\_raw is False and schema is a Type[BaseModel] then the runnable |
| `Runnable[LanguageModelInput, dict | BaseModel]` | outputs a BaseModel. |

Pydantic schema (include\_raw=False):

```
from langchain_aws.chat_models.bedrock import ChatBedrock
from pydantic import BaseModel

class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''
    answer: str
    justification: str

llm = ChatBedrock(
    model_id="anthropic.claude-3-sonnet-20240229-v1:0",
    model_kwargs={"temperature": 0.001},
)  # type: ignore[call-arg]
structured_model = model.with_structured_output(AnswerWithJustification)

structured_model.invoke("What weighs more a pound of bricks or a pound of feathers")

# -> AnswerWithJustification(
#     answer='They weigh the same',
#     justification='Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ.'
# )
```


Pydantic schema (include\_raw=True):

```
from langchain_aws.chat_models.bedrock import ChatBedrock
from pydantic import BaseModel

class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''
    answer: str
    justification: str

model = ChatBedrock(
    model_id="anthropic.claude-3-sonnet-20240229-v1:0",
    model_kwargs={"temperature": 0.001},
)  # type: ignore[call-arg]
structured_model = model.with_structured_output(AnswerWithJustification, include_raw=True)

structured_model.invoke("What weighs more a pound of bricks or a pound of feathers")
# -> {
#     'raw': AIMessage(content='', additional_kwargs={'tool_calls': [{'id': 'call_Ao02pnFYXD6GN1yzc0uXPsvF', 'function': {'arguments': '{"answer":"They weigh the same.","justification":"Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ."}', 'name': 'AnswerWithJustification'}, 'type': 'function'}]}),
#     'parsed': AnswerWithJustification(answer='They weigh the same.', justification='Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ.'),
#     'parsing_error': None
# }
```


Dict schema (include\_raw=False):

```
from langchain_aws.chat_models.bedrock import ChatBedrock

schema = {
    "name": "AnswerWithJustification",
    "description": "An answer to the user question along with justification for the answer.",
    "input_schema": {
        "type": "object",
        "properties": {
            "answer": {"type": "string"},
            "justification": {"type": "string"},
        },
        "required": ["answer", "justification"]
    }
}
model = ChatBedrock(
    model_id="anthropic.claude-3-sonnet-20240229-v1:0",
    model_kwargs={"temperature": 0.001},
)  # type: ignore[call-arg]
structured_model = model.with_structured_output(schema)

structured_model.invoke("What weighs more a pound of bricks or a pound of feathers")
# -> {
#     'answer': 'They weigh the same',
#     'justification': 'Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume and density of the two substances differ.'
# }
```

### ChatBedrockConverse [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse "Copy anchor link to this section for reference")

Bases: `BaseChatModel`

Bedrock chat model integration built on the Bedrock converse API.

This implementation will eventually replace the existing ChatBedrock implementation
once the Bedrock converse API has feature parity with older Bedrock API.
Specifically the converse API does not yet support custom Bedrock models.

Setup

To use Amazon Bedrock make sure you've gone through all the steps described
here: <https://docs.aws.amazon.com/bedrock/latest/userguide/setting-up.html>

Once that's completed, install the LangChain integration:

```
pip install -U langchain-aws
```

Key init args — completion params:
model: str
Name of BedrockConverse model to use.
temperature: float
Sampling temperature.
max\_tokens: Optional[int]
Max number of tokens to generate.

Key init args — client params:
region\_name: Optional[str]
AWS region to use, e.g. 'us-west-2'.
base\_url: Optional[str]
Bedrock endpoint to use. Needed if you don't want to default to us-east-
1 endpoint.
credentials\_profile\_name: Optional[str]
The name of the profile in the ~/.aws/credentials or ~/.aws/config files.

See full list of supported init args and their descriptions in the params section.

Instantiate

```
from langchain_aws import ChatBedrockConverse

model = ChatBedrockConverse(
    model="anthropic.claude-3-sonnet-20240229-v1:0",
    temperature=0,
    max_tokens=None,
    # other params...
)
```


Invoke

```
messages = [
    ("system", "You are a helpful translator. Translate the user sentence to French."),
    ("human", "I love programming."),
]
model.invoke(messages)
```

```
AIMessage(content=[{'type': 'text', 'text': "J'aime la programmation."}], response_metadata={'ResponseMetadata': {'RequestId': '9ef1e313-a4c1-4f79-b631-171f658d3c0e', 'HTTPStatusCode': 200, 'HTTPHeaders': {'date': 'Sat, 15 Jun 2024 01:19:24 GMT', 'content-type': 'application/json', 'content-length': '205', 'connection': 'keep-alive', 'x-amzn-requestid': '9ef1e313-a4c1-4f79-b631-171f658d3c0e'}, 'RetryAttempts': 0}, 'stopReason': 'end_turn', 'metrics': {'latencyMs': 609}}, id='run-754e152b-2b41-4784-9538-d40d71a5c3bc-0', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```


Stream

```
for chunk in model.stream(messages):
    print(chunk)
```

```
AIMessageChunk(content=[], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'type': 'text', 'text': 'J', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': "'", 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': 'a', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': 'ime', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': ' la', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': ' programm', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': 'ation', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': '.', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[], response_metadata={'stopReason': 'end_turn'}, id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[], response_metadata={'metrics': {'latencyMs': 581}}, id='run-da3c2606-4792-440a-ac66-72e0d1f6d117', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```

```
stream = model.stream(messages)
full = next(stream)
for chunk in stream:
    full += chunk
full
```

```
AIMessageChunk(content=[{'type': 'text', 'text': "J'aime la programmation.", 'index': 0}], response_metadata={'stopReason': 'end_turn', 'metrics': {'latencyMs': 554}}, id='run-56a5a5e0-de86-412b-9835-624652dc3539', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```


Tool calling

```
from pydantic import BaseModel, Field

class GetWeather(BaseModel):
    '''Get the current weather in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

class GetPopulation(BaseModel):
    '''Get the current population in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

model_with_tools = model.bind_tools([GetWeather, GetPopulation])
ai_msg = model_with_tools.invoke("Which city is hotter today and which is bigger: LA or NY?")
ai_msg.tool_calls
```

```
[{'name': 'GetWeather',
  'args': {'location': 'Los Angeles, CA'},
  'id': 'tooluse_Mspi2igUTQygp-xbX6XGVw'},
 {'name': 'GetWeather',
  'args': {'location': 'New York, NY'},
  'id': 'tooluse_tOPHiDhvR2m0xF5_5tyqWg'},
 {'name': 'GetPopulation',
  'args': {'location': 'Los Angeles, CA'},
  'id': 'tooluse__gcY_klbSC-GqB-bF_pxNg'},
 {'name': 'GetPopulation',
  'args': {'location': 'New York, NY'},
  'id': 'tooluse_-1HSoGX0TQCSaIg7cdFy8Q'}]
```

See `ChatBedrockConverse.bind_tools()` method for more.


Structured output

```
from typing import Optional

from pydantic import BaseModel, Field

class Joke(BaseModel):
    '''Joke to tell user.'''

    setup: str = Field(description="The setup of the joke")
    punchline: str = Field(description="The punchline to the joke")
    rating: Optional[int] = Field(description="How funny the joke is, from 1 to 10")

structured_model = model.with_structured_output(Joke)
structured_model.invoke("Tell me a joke about cats")
```

```
Joke(setup='What do you call a cat that gets all dressed up?', punchline='A purrfessional!', rating=7)
```

See `ChatBedrockConverse.with_structured_output()` for more.


Extended thinking

Some models, such as Claude 3.7 Sonnet, support an extended thinking
feature that outputs the step-by-step reasoning process that led to an
answer.

To use it, specify the `thinking` parameter when initializing
`ChatBedrockConverse` as shown below.

You will need to specify a token budget to use this feature. See usage example:

```
from langchain_aws import ChatBedrockConverse

thinking_params= {
    "thinking": {
        "type": "enabled",
        "budget_tokens": 2000
    }
}

model = ChatBedrockConverse(
    model="us.anthropic.claude-sonnet-4-5-20250929-v1:0",
    max_tokens=5000,
    region_name="us-west-2",
    additional_model_request_fields=thinking_params,
)

response = model.invoke("What is the cube root of 50.653?")
print(response.content)
```

```
[
    {'type': 'reasoning_content', 'reasoning_content': {'type': 'text', 'text': 'I need to calculate the cube root of... ', 'signature': '...'}},
    {'type': 'text', 'text': 'The cube root of 50.653 is...'}
]
```


Image input

```
import base64
import httpx
from langchain_core.messages import HumanMessage

image_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Gfp-wisconsin-madison-the-nature-boardwalk.jpg/2560px-Gfp-wisconsin-madison-the-nature-boardwalk.jpg"
image_data = base64.b64encode(httpx.get(image_url).content).decode("utf-8")
message = HumanMessage(
    content=[
        {"type": "text", "text": "describe the weather in this image"},
        {
            "type": "image",
            "source": {"type": "base64", "media_type": "image/jpeg", "data": image_data},
        },
    ],
)
ai_msg = model.invoke([message])
ai_msg.content
```

```
[{'type': 'text',
  'text': 'The image depicts a sunny day with a partly cloudy sky. The sky is a brilliant blue color with scattered white clouds drifting across. The lighting and cloud patterns suggest pleasant, mild weather conditions. The scene shows an open grassy field or meadow, indicating warm temperatures conducive for vegetation growth. Overall, the weather portrayed in this scenic outdoor image appears to be sunny with some clouds, likely representing a nice, comfortable day.'}]
```


Token usage

```
ai_msg = model.invoke(messages)
ai_msg.usage_metadata
```

```
{'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36}
```


Response metadata

```
ai_msg = model.invoke(messages)
ai_msg.response_metadata
```

```
{'ResponseMetadata': {'RequestId': '776a2a26-5946-45ae-859e-82dc5f12017c',
  'HTTPStatusCode': 200,
  'HTTPHeaders': {'date': 'Mon, 17 Jun 2024 01:37:05 GMT',
   'content-type': 'application/json',
   'content-length': '206',
   'connection': 'keep-alive',
   'x-amzn-requestid': '776a2a26-5946-45ae-859e-82dc5f12017c'},
  'RetryAttempts': 0},
 'stopReason': 'end_turn',
 'metrics': {'latencyMs': 1290}}
```

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Transform a single input into an output. |
| `ainvoke` | Transform a single input into an output. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |
| `set_verbose` | If verbose is `None`, set it. |
| `generate_prompt` | Pass a sequence of prompts to the model and return model generations. |
| `agenerate_prompt` | Asynchronously pass a sequence of prompts and return model generations. |
| `get_token_ids` | Return the ordered IDs of the tokens in a text. |
| `get_num_tokens` | Get the number of tokens present in the text. |
| `generate` | Pass a sequence of prompts to the model and return model generations. |
| `agenerate` | Asynchronously pass a sequence of prompts to a model and return generations. |
| `dict` | Return a dictionary of the LLM. |
| `create_cache_point` | Create a prompt caching configuration for Bedrock. |
| `build_extra` | Build extra kwargs from additional params that were passed in. |
| `validate_environment` | Validate that AWS credentials to and python package exists in environment. |
| `bind_tools` | Bind tools to the model. |
| `with_structured_output` | Model wrapper that returns outputs formatted to match the given schema. |
| `is_lc_serializable` | Is this class serializable? |
| `get_lc_namespace` | Get the namespace of the LangChain object. |
| `get_num_tokens_from_messages` | Get the number of tokens in the messages using AWS Bedrock count\_tokens API. |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.InputType "Copy anchor link to this section for reference")

```
InputType: TypeAlias
```

Get the input type for this `Runnable`.

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.OutputType "Copy anchor link to this section for reference")

```
OutputType: Any
```

Get the output type for this `Runnable`.

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### cache `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.cache "Copy anchor link to this section for reference")

```
cache: BaseCache | bool | None = Field(default=None, exclude=True)
```

Whether to cache the response.

* If `True`, will use the global cache.
* If `False`, will not use a cache
* If `None`, will use the global cache if it's set, otherwise no cache.
* If instance of `BaseCache`, will use the provided cache.

Caching is not currently supported for streaming methods of models.

#### verbose `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.verbose "Copy anchor link to this section for reference")

```
verbose: bool = Field(default_factory=_get_verbosity, exclude=True, repr=False)
```

Whether to print out response text.

#### callbacks `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.callbacks "Copy anchor link to this section for reference")

```
callbacks: Callbacks = Field(default=None, exclude=True)
```

Callbacks to add to the run trace.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = Field(default=None, exclude=True)
```

Tags to add to the run trace.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = Field(default=None, exclude=True)
```

Metadata to add to the run trace.

#### custom\_get\_token\_ids `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.custom_get_token_ids "Copy anchor link to this section for reference")

```
custom_get_token_ids: Callable[[str], list[int]] | None = Field(
    default=None, exclude=True
)
```

Optional encoder to use for counting tokens.

#### rate\_limiter `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.rate_limiter "Copy anchor link to this section for reference")

```
rate_limiter: BaseRateLimiter | None = Field(default=None, exclude=True)
```

An optional rate limiter to use for limiting the number of requests.

#### disable\_streaming `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.disable_streaming "Copy anchor link to this section for reference")

```
disable_streaming: bool | Literal['tool_calling'] = False
```

Whether to disable streaming for this model.

If streaming is bypassed, then `stream`/`astream`/`astream_events` will
defer to `invoke`/`ainvoke`.

* If `True`, will always bypass streaming case.
* If `'tool_calling'`, will bypass streaming case only when the model is called
  with a `tools` keyword argument. In other words, LangChain will automatically
  switch to non-streaming behavior (`invoke`) only when the tools argument is
  provided. This offers the best of both worlds.
* If `False` (Default), will always use streaming case if available.

The main reason for this flag is that code might be written using `stream` and
a user may want to swap out a given model for another model whose the implementation
does not properly support streaming.

#### output\_version `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.output_version "Copy anchor link to this section for reference")

```
output_version: str | None = Field(
    default_factory=from_env("LC_OUTPUT_VERSION", default=None)
)
```

Version of `AIMessage` output format to store in message content.

`AIMessage.content_blocks` will lazily parse the contents of `content` into a
standard format. This flag can be used to additionally store the standard format
in message content, e.g., for serialization purposes.

Supported values:

* `'v0'`: provider-specific format in content (can lazily-parse with
  `content_blocks`)
* `'v1'`: standardized format in content (consistent with `content_blocks`)

Partner packages (e.g.,
[`langchain-openai`](https://pypi.org/project/langchain-openai)) can also use this
field to roll out new content formats in a backward-compatible way.

Added in `langchain-core` 1.0.0

#### profile `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.profile "Copy anchor link to this section for reference")

```
profile: ModelProfile | None = Field(default=None, exclude=True)
```

Profile detailing model capabilities.

Beta feature

This is a beta feature. The format of model profiles is subject to change.

If not specified, automatically loaded from the provider package on initialization
if data is available.

Example profile data includes context window sizes, supported modalities, or support
for tool calling, structured output, and other features.

Added in `langchain-core` 1.1.0

#### client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.client "Copy anchor link to this section for reference")

```
client: Any = Field(default=None, exclude=True)
```

The bedrock runtime client for making data plane API calls

#### bedrock\_client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bedrock_client "Copy anchor link to this section for reference")

```
bedrock_client: Any = Field(default=None, exclude=True)
```

The bedrock client for making control plane API calls

#### model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.model_id "Copy anchor link to this section for reference")

```
model_id: str = Field(alias='model')
```

ID of the model to call.

e.g., `"anthropic.claude-3-sonnet-20240229-v1:0"`. This is equivalent to the
modelID property in the list-foundation-models api. For custom and provisioned
models, an ARN value is expected. See
<https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns>
for a list of all supported built-in models.

#### base\_model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.base_model_id "Copy anchor link to this section for reference")

```
base_model_id: str | None = Field(default=None, alias='base_model')
```

An optional field to pass the base model id. If provided, this will be used over
the value of model\_id to identify the base model.

#### system `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.system "Copy anchor link to this section for reference")

```
system: list[str | dict[str, Any]] | None = None
```

Optional list of system prompts for the LLM.

Each entry can be either

* a simple string (for straightforward text-based system prompts), or
* a dictionary matching the Converse API system message schema, allowing
  inclusion of additional fields like `guardContent`, `cachePoint`, etc.

Example

system = [
"a simple system prompt",
{
"text": "another system prompt",
"guardContent": {"text": {"text": "string"}},
"cachePoint": {"type": "default"}
},
]

String inputs will be internally converted to the appropriate message format,
while dict entries will be passed through as-is. Any invalid formats will be
rejected by the Converse API.

#### max\_tokens `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.max_tokens "Copy anchor link to this section for reference")

```
max_tokens: int | None = None
```

Max tokens to generate.

#### stop\_sequences `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.stop_sequences "Copy anchor link to this section for reference")

```
stop_sequences: list[str] | None = Field(default=None, alias='stop')
```

Stop generation if any of these substrings occurs.

#### temperature `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.temperature "Copy anchor link to this section for reference")

```
temperature: float | None = None
```

Sampling temperature. Must be 0 to 1.

#### top\_p `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.top_p "Copy anchor link to this section for reference")

```
top_p: float | None = None
```

The percentage of most-likely candidates that are considered for the next token.

Must be 0 to 1.

For example, if you choose a value of 0.8 for topP, the model selects from
the top 80% of the probability distribution of tokens that could be next in the
sequence.

#### region\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.region_name "Copy anchor link to this section for reference")

```
region_name: str | None = None
```

The aws region, e.g., `us-west-2`.

Falls back to AWS\_REGION or AWS\_DEFAULT\_REGION env variable or region specified in
~/.aws/config in case it is not provided here.

#### credentials\_profile\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.credentials_profile_name "Copy anchor link to this section for reference")

```
credentials_profile_name: str | None = Field(default=None, exclude=True)
```

The name of the profile in the ~/.aws/credentials or ~/.aws/config files.

Profile should either have access keys or role information specified.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

#### aws\_access\_key\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_access_key_id "Copy anchor link to this section for reference")

```
aws_access_key_id: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_ACCESS_KEY_ID", default=None)
)
```

AWS access key id.

If provided, aws\_secret\_access\_key must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_ACCESS\_KEY\_ID' environment variable.

#### aws\_secret\_access\_key `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_secret_access_key "Copy anchor link to this section for reference")

```
aws_secret_access_key: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SECRET_ACCESS_KEY", default=None)
)
```

AWS secret\_access\_key.

If provided, aws\_access\_key\_id must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_SECRET\_ACCESS\_KEY' environment variable.

#### aws\_session\_token `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.aws_session_token "Copy anchor link to this section for reference")

```
aws_session_token: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SESSION_TOKEN", default=None)
)
```

AWS session token.

If provided, aws\_access\_key\_id and aws\_secret\_access\_key must
also be provided. Not required unless using temporary credentials.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_SESSION\_TOKEN' environment variable.

#### provider `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.provider "Copy anchor link to this section for reference")

```
provider: str = ''
```

The model provider, e.g., amazon, cohere, ai21, etc.

When not supplied, provider is extracted from the first part of the model\_id, e.g.
'amazon' in 'amazon.titan-text-express-v1'. This value should be provided for model
IDs that do not have the provider in them, like custom and provisioned models that
have an ARN associated with them.

#### endpoint\_url `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.endpoint_url "Copy anchor link to this section for reference")

```
endpoint_url: str | None = Field(default=None, alias='base_url')
```

Needed if you don't want to default to us-east-1 endpoint

#### default\_headers `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.default_headers "Copy anchor link to this section for reference")

```
default_headers: Mapping[str, str] | None = None
```

Headers to pass to the Anthropic clients, will be used for every API call.

#### config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config "Copy anchor link to this section for reference")

```
config: Any = None
```

An optional botocore.config.Config instance to pass to the client.

#### guardrail\_config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.guardrail_config "Copy anchor link to this section for reference")

```
guardrail_config: dict[str, Any] | None = Field(default=None, alias='guardrails')
```

Configuration information for a guardrail that you want to use in the request.

#### additional\_model\_request\_fields `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.additional_model_request_fields "Copy anchor link to this section for reference")

```
additional_model_request_fields: dict[str, Any] | None = None
```

Additional inference parameters that the model supports.

Parameters beyond the base set of inference parameters that Converse supports in the
inferenceConfig field.

#### additional\_model\_response\_field\_paths `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.additional_model_response_field_paths "Copy anchor link to this section for reference")

```
additional_model_response_field_paths: list[str] | None = None
```

Additional model parameters field paths to return in the response.

Converse returns the requested fields as a JSON Pointer object in the
additionalModelResponseFields field. The following is example JSON for
additionalModelResponseFieldPaths.

#### supports\_tool\_choice\_values `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.supports_tool_choice_values "Copy anchor link to this section for reference")

```
supports_tool_choice_values: Sequence[Literal['auto', 'any', 'tool']] | None = None
```

Which types of tool\_choice values the model supports.

Inferred if not specified. Inferred as ('auto', 'any', 'tool') if a 'claude-3'
model is used, ('auto', 'any') if a 'mistral-large' model is used,
('auto') if a 'nova' model is used, empty otherwise.

#### request\_metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.request_metadata "Copy anchor link to this section for reference")

```
request_metadata: dict[str, str] | None = None
```

Key-Value pairs that you can use to filter invocation logs.

#### guard\_last\_turn\_only `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.guard_last_turn_only "Copy anchor link to this section for reference")

```
guard_last_turn_only: bool = False
```

Boolean flag for applying the guardrail to only the last turn.

#### raw\_blocks `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.raw_blocks "Copy anchor link to this section for reference")

```
raw_blocks: list[dict[str, Any]] | None = None
```

Raw Bedrock message blocks that can be passed in.

LangChain will relay them unchanged, enabling any combination of content
block types. This is useful for custom guardrail wrapping.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AIMessage
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AIMessage
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.stream "Copy anchor link to this section for reference")

```
stream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> Iterator[AIMessageChunk]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream "Copy anchor link to this section for reference")

```
astream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[AIMessageChunk]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

#### set\_verbose [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.set_verbose "Copy anchor link to this section for reference")

```
set_verbose(verbose: bool | None) -> bool
```

If verbose is `None`, set it.

This allows users to pass in `None` as verbose to access the global setting.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `verbose` | The verbosity setting to use.  **TYPE:** `bool | None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | The verbosity setting to use. |

#### generate\_prompt [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.generate_prompt "Copy anchor link to this section for reference")

```
generate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to the model and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### agenerate\_prompt `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.agenerate_prompt "Copy anchor link to this section for reference")

```
agenerate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### get\_token\_ids [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_token_ids "Copy anchor link to this section for reference")

```
get_token_ids(text: str) -> list[int]
```

Return the ordered IDs of the tokens in a text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[int]` | A list of IDs corresponding to the tokens in the text, in order they occur in the text. |

#### get\_num\_tokens [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_num_tokens "Copy anchor link to this section for reference")

```
get_num_tokens(text: str) -> int
```

Get the number of tokens present in the text.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The integer number of tokens in the text. |

#### generate [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.generate "Copy anchor link to this section for reference")

```
generate(
    messages: list[list[BaseMessage]],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    *,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    run_name: str | None = None,
    run_id: UUID | None = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to the model and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | List of list of messages.  **TYPE:** `list[list[BaseMessage]]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `tags` | The tags to apply.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata to apply.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `run_name` | The name of the run.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### agenerate `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.agenerate "Copy anchor link to this section for reference")

```
agenerate(
    messages: list[list[BaseMessage]],
    stop: list[str] | None = None,
    callbacks: Callbacks = None,
    *,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    run_name: str | None = None,
    run_id: UUID | None = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts to a model and return generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | List of list of messages.  **TYPE:** `list[list[BaseMessage]]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `tags` | The tags to apply.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata to apply.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `run_name` | The name of the run.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### dict [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.dict "Copy anchor link to this section for reference")

```
dict(**kwargs: Any) -> dict
```

Return a dictionary of the LLM.

#### create\_cache\_point `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.create_cache_point "Copy anchor link to this section for reference")

```
create_cache_point(cache_type: str = 'default') -> dict[str, Any]
```

Create a prompt caching configuration for Bedrock.
Args:
cache\_type: Type of cache point. Default is "default".
Returns:
Dictionary containing prompt caching configuration.

#### build\_extra `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.build_extra "Copy anchor link to this section for reference")

```
build_extra(values: dict[str, Any]) -> Any
```

Build extra kwargs from additional params that were passed in.

#### validate\_environment [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.validate_environment "Copy anchor link to this section for reference")

```
validate_environment() -> Self
```

Validate that AWS credentials to and python package exists in environment.

#### bind\_tools [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.bind_tools "Copy anchor link to this section for reference")

```
bind_tools(
    tools: Sequence[
        dict[str, Any] | TypeBaseModel | Callable | BaseTool | str | NovaSystemTool
    ],
    *,
    tool_choice: dict | str | Literal["auto", "any"] | None = None,
    **kwargs: Any,
) -> Runnable[LanguageModelInput, AIMessage]
```

Bind tools to the model.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `tools` | Sequence of tools to bind to the model.  **TYPE:** `Sequence[dict[str, Any] | type | Callable | BaseTool]` |
| `tool_choice` | The tool to use. If "any" then any tool can be used.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[LanguageModelInput, AIMessage]` | A Runnable that returns a message. |

#### with\_structured\_output [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.with_structured_output "Copy anchor link to this section for reference")

```
with_structured_output(
    schema: _DictOrPydanticClass, *, include_raw: bool = False, **kwargs: Any
) -> Runnable[LanguageModelInput, dict | BaseModel]
```

Model wrapper that returns outputs formatted to match the given schema.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `schema` | The output schema. Can be passed in as:   * An OpenAI function/tool schema, * A JSON Schema, * A `TypedDict` class, * Or a Pydantic class.   If `schema` is a Pydantic class then the model output will be a Pydantic instance of that class, and the model-generated fields will be validated by the Pydantic class. Otherwise the model output will be a dict and will not be validated.  See `langchain_core.utils.function_calling.convert_to_openai_tool` for more on how to properly specify types and descriptions of schema fields when specifying a Pydantic or `TypedDict` class.  **TYPE:** `dict[str, Any] | type` |
| `include_raw` | If `False` then only the parsed structured output is returned.  If an error occurs during model output parsing it will be raised.  If `True` then both the raw model response (a `BaseMessage`) and the parsed model response will be returned.  If an error occurs during output parsing it will be caught and returned as well.  The final output is always a `dict` with keys `'raw'`, `'parsed'`, and `'parsing_error'`.  **TYPE:** `bool`  **DEFAULT:** `False` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If there are any unsupported `kwargs`. |
| `NotImplementedError` | If the model does not implement `with_structured_output()`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[LanguageModelInput, dict[str, Any] | BaseModel]` | A `Runnable` that takes same inputs as a `langchain_core.language_models.chat.BaseChatModel`. If `include_raw` is `False` and `schema` is a Pydantic class, `Runnable` outputs an instance of `schema` (i.e., a Pydantic object). Otherwise, if `include_raw` is `False` then `Runnable` outputs a `dict`.  If `include_raw` is `True`, then `Runnable` outputs a `dict` with keys:   * `'raw'`: `BaseMessage` * `'parsed'`: `None` if there was a parsing error, otherwise the type   depends on the `schema` as described above. * `'parsing_error'`: `BaseException | None` |

Pydantic schema (`include_raw=False`)

```
from pydantic import BaseModel


class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''

    answer: str
    justification: str


model = ChatModel(model="model-name", temperature=0)
structured_model = model.with_structured_output(AnswerWithJustification)

structured_model.invoke(
    "What weighs more a pound of bricks or a pound of feathers"
)

# -> AnswerWithJustification(
#     answer='They weigh the same',
#     justification='Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ.'
# )
```


Pydantic schema (`include_raw=True`)

```
from pydantic import BaseModel


class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''

    answer: str
    justification: str


model = ChatModel(model="model-name", temperature=0)
structured_model = model.with_structured_output(
    AnswerWithJustification, include_raw=True
)

structured_model.invoke(
    "What weighs more a pound of bricks or a pound of feathers"
)
# -> {
#     'raw': AIMessage(content='', additional_kwargs={'tool_calls': [{'id': 'call_Ao02pnFYXD6GN1yzc0uXPsvF', 'function': {'arguments': '{"answer":"They weigh the same.","justification":"Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ."}', 'name': 'AnswerWithJustification'}, 'type': 'function'}]}),
#     'parsed': AnswerWithJustification(answer='They weigh the same.', justification='Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ.'),
#     'parsing_error': None
# }
```


Dictionary schema (`include_raw=False`)

```
from pydantic import BaseModel
from langchain_core.utils.function_calling import convert_to_openai_tool


class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''

    answer: str
    justification: str


dict_schema = convert_to_openai_tool(AnswerWithJustification)
model = ChatModel(model="model-name", temperature=0)
structured_model = model.with_structured_output(dict_schema)

structured_model.invoke(
    "What weighs more a pound of bricks or a pound of feathers"
)
# -> {
#     'answer': 'They weigh the same',
#     'justification': 'Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume and density of the two substances differ.'
# }
```

Behavior changed in `langchain-core` 0.2.26

Added support for `TypedDict` class.

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Is this class serializable?

By design, even if a class inherits from `Serializable`, it is not serializable
by default. This is to prevent accidental serialization of objects that should
not be serialized.

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether the class is serializable. Default is `False`. |

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the LangChain object.

For example, if the class is
[`langchain.llms.openai.OpenAI`](https://reference.langchain.com/python/integrations/langchain_openai/OpenAI/#langchain_openai.OpenAI "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">OpenAI</span>"), then the namespace is
`["langchain", "llms", "openai"]`

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | The namespace. |

#### get\_num\_tokens\_from\_messages [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.ChatBedrockConverse.get_num_tokens_from_messages "Copy anchor link to this section for reference")

```
get_num_tokens_from_messages(
    messages: list[BaseMessage], tools: Sequence | None = None
) -> int
```

Get the number of tokens in the messages using AWS Bedrock count\_tokens API.

This method uses AWS Bedrock's count\_tokens API which provides accurate
token counting for supported models before inference. Falls back to the base
implementation for unsupported models.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | The message inputs to tokenize.  **TYPE:** `list[BaseMessage]` |
| `tools` | Tool schemas (ignored, unsupported by count\_tokens API).  **TYPE:** `Sequence | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The number of input tokens in the messages. |

### BedrockRerank [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank "Copy anchor link to this section for reference")

Bases: `BaseDocumentCompressor`

Document compressor that uses AWS Bedrock Rerank API.

| METHOD | DESCRIPTION |
| --- | --- |
| `acompress_documents` | Async compress retrieved documents given the query context. |
| `initialize_client` | Initialize the AWS Bedrock client. |
| `rerank` | Returns an ordered list of documents based on their relevance to the query. |
| `compress_documents` | Compress documents using Bedrock's rerank API. |

#### model\_arn `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.model_arn "Copy anchor link to this section for reference")

```
model_arn: str
```

The ARN of the reranker model.

#### client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.client "Copy anchor link to this section for reference")

```
client: Any = Field(default=None, exclude=True)
```

Bedrock client to use for compressing documents.

#### top\_n `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.top_n "Copy anchor link to this section for reference")

```
top_n: int | None = 3
```

Number of documents to return.

#### region\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.region_name "Copy anchor link to this section for reference")

```
region_name: str | None = None
```

The aws region, e.g., `us-west-2`.

Falls back to `AWS_REGION` or `AWS_DEFAULT_REGION` env variable or region
specified in `~/.aws/config` in case it is not provided here.

#### credentials\_profile\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.credentials_profile_name "Copy anchor link to this section for reference")

```
credentials_profile_name: str | None = Field(
    default_factory=from_env("AWS_PROFILE", default=None)
)
```

AWS profile for authentication, optional.

#### aws\_access\_key\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_access_key_id "Copy anchor link to this section for reference")

```
aws_access_key_id: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_ACCESS_KEY_ID", default=None)
)
```

AWS access key id.

If provided, `aws_secret_access_key` must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.

#### aws\_secret\_access\_key `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_secret_access_key "Copy anchor link to this section for reference")

```
aws_secret_access_key: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SECRET_ACCESS_KEY", default=None)
)
```

AWS secret\_access\_key.

If provided, aws\_access\_key\_id must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.

#### aws\_session\_token `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.aws_session_token "Copy anchor link to this section for reference")

```
aws_session_token: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SESSION_TOKEN", default=None)
)
```

AWS session token.

If provided, aws\_access\_key\_id and aws\_secret\_access\_key must
also be provided. Not required unless using temporary credentials.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.

#### endpoint\_url `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.endpoint_url "Copy anchor link to this section for reference")

```
endpoint_url: str | None = Field(default=None, alias='base_url')
```

Needed if you don't want to default to us-east-1 endpoint

#### config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.config "Copy anchor link to this section for reference")

```
config: Any = None
```

An optional botocore.config.Config instance to pass to the client.

#### acompress\_documents `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.acompress_documents "Copy anchor link to this section for reference")

```
acompress_documents(
    documents: Sequence[Document], query: str, callbacks: Callbacks | None = None
) -> Sequence[Document]
```

Async compress retrieved documents given the query context.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | The retrieved `Document` objects.  **TYPE:** `Sequence[Document]` |
| `query` | The query context.  **TYPE:** `str` |
| `callbacks` | Optional `Callbacks` to run during compression.  **TYPE:** `Callbacks | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Sequence[Document]` | The compressed documents. |

#### initialize\_client `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.initialize_client "Copy anchor link to this section for reference")

```
initialize_client(values: dict[str, Any]) -> Any
```

Initialize the AWS Bedrock client.

#### rerank [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.rerank "Copy anchor link to this section for reference")

```
rerank(
    documents: Sequence[str | Document | dict],
    query: str,
    top_n: int | None = None,
    additional_model_request_fields: dict[str, Any] | None = None,
) -> list[dict[str, Any]]
```

Returns an ordered list of documents based on their relevance to the query.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | The query to use for reranking.  **TYPE:** `str` |
| `documents` | A sequence of documents to rerank.  **TYPE:** `Sequence[str | Document | dict]` |
| `top_n` | The number of top-ranked results to return. Defaults to self.top\_n.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `additional_model_request_fields` | Additional fields to pass to the model.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[dict[str, Any]]` | A list of ranked documents with relevance scores. |

#### compress\_documents [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockRerank.compress_documents "Copy anchor link to this section for reference")

```
compress_documents(
    documents: Sequence[Document], query: str, callbacks: Callbacks | None = None
) -> Sequence[Document]
```

Compress documents using Bedrock's rerank API.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | A sequence of documents to compress.  **TYPE:** `Sequence[Document]` |
| `query` | The query to use for compressing the documents.  **TYPE:** `str` |
| `callbacks` | Callbacks to run during the compression process.  **TYPE:** `Callbacks | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Sequence[Document]` | A sequence of compressed documents. |

### BedrockEmbeddings [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings "Copy anchor link to this section for reference")

Bases: `BaseModel`, `Embeddings`

Bedrock embedding models.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
<https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If a specific credential profile should be used, you must pass
the name of the profile from the ~/.aws/credentials file that is to be used.

Make sure the credentials / roles used have the required policies to
access the Bedrock service.

Example

```
from langchain_aws import BedrockEmbeddings

embeddings = BedrockEmbeddings(
    credentials_profile_name="default",
    region_name="us-east-1",
    model_id="amazon.nova-2-multimodal-embeddings-v1:0",
    dimensions=256,
)
```

| METHOD | DESCRIPTION |
| --- | --- |
| `validate_environment` | Validate that AWS credentials to and python package exists in environment. |
| `embed_documents` | Compute doc embeddings using a Bedrock model. |
| `embed_query` | Compute query embeddings using a Bedrock model. |
| `aembed_query` | Asynchronous compute query embeddings using a Bedrock model. |
| `aembed_documents` | Asynchronous compute doc embeddings using a Bedrock model. |
| `embed_image` | Embed a single image. |
| `embed_images` | Embed multiple images. |
| `embed_audio` | Embed audio content. |
| `embed_video` | Embed video content. |
| `aembed_image` | Asynchronously embed a single image. |
| `aembed_images` | Asynchronously embed multiple images. |
| `aembed_audio` | Asynchronously embed audio content. |
| `aembed_video` | Asynchronously embed video content. |

#### client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.client "Copy anchor link to this section for reference")

```
client: Any = Field(default=None, exclude=True)
```

Bedrock client.

#### region\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.region_name "Copy anchor link to this section for reference")

```
region_name: str | None = None
```

The aws region e.g., `us-west-2`.

Falls back to `AWS_REGION`/`AWS_DEFAULT_REGION` env variable or region
specified in `~/.aws/config` in case it is not provided here.

#### credentials\_profile\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.credentials_profile_name "Copy anchor link to this section for reference")

```
credentials_profile_name: str | None = None
```

The name of the profile in the `~/.aws/credentials` or `~/.aws/config` files,
which has either access keys or role information specified.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

#### aws\_access\_key\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_access_key_id "Copy anchor link to this section for reference")

```
aws_access_key_id: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_ACCESS_KEY_ID", default=None)
)
```

AWS access key id.

If provided, aws\_secret\_access\_key must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.

#### aws\_secret\_access\_key `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_secret_access_key "Copy anchor link to this section for reference")

```
aws_secret_access_key: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SECRET_ACCESS_KEY", default=None)
)
```

AWS secret\_access\_key.

If provided, aws\_access\_key\_id must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.

#### aws\_session\_token `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aws_session_token "Copy anchor link to this section for reference")

```
aws_session_token: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SESSION_TOKEN", default=None)
)
```

AWS session token.

If provided, `aws_access_key_id` and `aws_secret_access_key` must also be
provided.

Not required unless using temporary credentials.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.

#### model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.model_id "Copy anchor link to this section for reference")

```
model_id: str = 'amazon.titan-embed-text-v1'
```

Id of the model to call, e.g., `'amazon.titan-embed-text-v1'`, this is
equivalent to the `modelId` property in the list-foundation-models api

#### model\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.model_kwargs "Copy anchor link to this section for reference")

```
model_kwargs: dict | None = None
```

Keyword arguments to pass to the model.

#### provider `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.provider "Copy anchor link to this section for reference")

```
provider: str | None = None
```

Name of the provider, e.g., amazon, cohere, etc..
If not specified, the provider will be inferred from the `model_id`.

#### endpoint\_url `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.endpoint_url "Copy anchor link to this section for reference")

```
endpoint_url: str | None = None
```

Needed if you don't want to default to `'us-east-1'` endpoint

#### normalize `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.normalize "Copy anchor link to this section for reference")

```
normalize: bool = False
```

Whether the embeddings should be normalized to unit vectors

#### dimensions `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.dimensions "Copy anchor link to this section for reference")

```
dimensions: int | None = None
```

The number of dimensions for the output embeddings.

Only supported by certain models (Titan v2, Cohere, Nova).
If not specified, uses the model's default.

#### config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.config "Copy anchor link to this section for reference")

```
config: Any = None
```

An optional `botocore.config.Config` instance to pass to the client.

#### validate\_environment [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.validate_environment "Copy anchor link to this section for reference")

```
validate_environment() -> Self
```

Validate that AWS credentials to and python package exists in environment.

#### embed\_documents [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_documents "Copy anchor link to this section for reference")

```
embed_documents(texts: list[str]) -> list[list[float]]
```

Compute doc embeddings using a Bedrock model.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | The list of texts to embed  **TYPE:** `list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[list[float]]` | List of embeddings, one for each text. |

#### embed\_query [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_query "Copy anchor link to this section for reference")

```
embed_query(text: str) -> list[float]
```

Compute query embeddings using a Bedrock model.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The text to embed.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embeddings for the text. |

#### aembed\_query `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_query "Copy anchor link to this section for reference")

```
aembed_query(text: str) -> list[float]
```

Asynchronous compute query embeddings using a Bedrock model.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The text to embed.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embeddings for the text. |

#### aembed\_documents `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_documents "Copy anchor link to this section for reference")

```
aembed_documents(texts: list[str]) -> list[list[float]]
```

Asynchronous compute doc embeddings using a Bedrock model.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | The list of texts to embed  **TYPE:** `list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[list[float]]` | List of embeddings, one for each text. |

#### embed\_image [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_image "Copy anchor link to this section for reference")

```
embed_image(image: MediaInput) -> list[float]
```

Embed a single image.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `image` | Image as base64 string, file path, S3 URI (Nova/Marengo), or bytes.  **TYPE:** `MediaInput` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embedding vector for the image. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If model doesn't support image embeddings. |

#### embed\_images [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_images "Copy anchor link to this section for reference")

```
embed_images(images: list[MediaInput]) -> list[list[float]]
```

Embed multiple images.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `images` | List of images as base64 strings, file paths, S3 URIs, or bytes.  **TYPE:** `list[MediaInput]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[list[float]]` | List of embedding vectors, one per image. |

#### embed\_audio [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_audio "Copy anchor link to this section for reference")

```
embed_audio(audio: MediaInput) -> list[float]
```

Embed audio content.

Only supported by Nova models. Audio must be ≤30 seconds for sync API.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `audio` | Audio as base64 string, file path, S3 URI, or bytes.  **TYPE:** `MediaInput` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embedding vector for the audio. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If model doesn't support audio embeddings. |

#### embed\_video [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.embed_video "Copy anchor link to this section for reference")

```
embed_video(video: MediaInput) -> list[float]
```

Embed video content.

Only supported by Nova models. Video must be ≤30 seconds for sync API.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `video` | Video as base64 string, file path, S3 URI, or bytes.  **TYPE:** `MediaInput` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embedding vector for the video. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If model doesn't support video embeddings. |

#### aembed\_image `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_image "Copy anchor link to this section for reference")

```
aembed_image(image: MediaInput) -> list[float]
```

Asynchronously embed a single image.

#### aembed\_images `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_images "Copy anchor link to this section for reference")

```
aembed_images(images: list[MediaInput]) -> list[list[float]]
```

Asynchronously embed multiple images.

#### aembed\_audio `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_audio "Copy anchor link to this section for reference")

```
aembed_audio(audio: MediaInput) -> list[float]
```

Asynchronously embed audio content.

#### aembed\_video `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockEmbeddings.aembed_video "Copy anchor link to this section for reference")

```
aembed_video(video: MediaInput) -> list[float]
```

Asynchronously embed video content.

### NeptuneAnalyticsGraph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph "Copy anchor link to this section for reference")

Bases: `BaseNeptuneGraph`

Neptune Analytics wrapper for graph operations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `client` | optional boto3 Neptune client  **TYPE:** `Any`  **DEFAULT:** `None` |
| `credentials_profile_name` | optional AWS profile name  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `region_name` | optional AWS region, e.g., us-west-2  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `graph_identifier` | the graph identifier for a Neptune Analytics graph  **TYPE:** `str` |

Example

```
graph = NeptuneAnalyticsGraph(
    graph_identifier='<my-graph-id>'
)
```

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only include necessary permissions.
Failure to do so may result in data corruption or loss, since the calling
code may attempt commands that would result in deletion, mutation
of data if appropriately prompted or reading sensitive data if such
data is present in the database.
The best way to guard against such negative outcomes is to (as appropriate)
limit the permissions granted to the credentials used with this tool.

```
See https://docs.langchain.com/oss/python/security-policy for more information.
```

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Create a new Neptune Analytics graph wrapper instance. |
| `query` | Query Neptune database. |

#### get\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.get_schema "Copy anchor link to this section for reference")

```
get_schema: str
```

Returns the schema of the Neptune database

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.__init__ "Copy anchor link to this section for reference")

```
__init__(
    graph_identifier: str,
    client: Any = None,
    credentials_profile_name: str | None = None,
    region_name: str | None = None,
    aws_access_key_id: SecretStr | None = None,
    aws_secret_access_key: SecretStr | None = None,
    aws_session_token: SecretStr | None = None,
    endpoint_url: str | None = None,
    config: Config | None = None,
    property_descriptions: dict[tuple[str, str], str] | None = None,
) -> None
```

Create a new Neptune Analytics graph wrapper instance.

#### query [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneAnalyticsGraph.query "Copy anchor link to this section for reference")

```
query(query: str, params: dict = {}) -> list[dict[str, Any]]
```

Query Neptune database.

### NeptuneGraph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph "Copy anchor link to this section for reference")

Bases: `BaseNeptuneGraph`

Neptune wrapper for graph operations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `host` | endpoint for the database instance  **TYPE:** `str` |
| `port` | port number for the database instance, default is 8182  **TYPE:** `int`  **DEFAULT:** `8182` |
| `use_https` | whether to use secure connection, default is True  **TYPE:** `bool`  **DEFAULT:** `True` |
| `client` | optional boto3 Neptune client  **TYPE:** `Any`  **DEFAULT:** `None` |
| `credentials_profile_name` | optional AWS profile name  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `region_name` | optional AWS region, e.g., us-west-2  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `sign` | whether to sign the request payload, default is True  **TYPE:** `bool`  **DEFAULT:** `True` |
| `aws_access_key_id` | optional AWS access key ID  **TYPE:** `SecretStr | None`  **DEFAULT:** `None` |
| `aws_secret_access_key` | optional AWS secret access key  **TYPE:** `SecretStr | None`  **DEFAULT:** `None` |
| `aws_session_token` | optional AWS session token  **TYPE:** `SecretStr | None`  **DEFAULT:** `None` |
| `endpoint_url` | optional custom endpoint URL  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `config` | optional botocore Config object  **TYPE:** `Config | None`  **DEFAULT:** `None` |

Example

```
graph = NeptuneGraph(
    host='<my-cluster>',
    port=8182
)
```

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only include necessary permissions.
Failure to do so may result in data corruption or loss, since the calling
code may attempt commands that would result in deletion, mutation
of data if appropriately prompted or reading sensitive data if such
data is present in the database.
The best way to guard against such negative outcomes is to (as appropriate)
limit the permissions granted to the credentials used with this tool.

```
See https://docs.langchain.com/oss/python/security-policy for more information.
```

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Create a new Neptune graph wrapper instance. |
| `query` | Query Neptune database. |

#### get\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.get_schema "Copy anchor link to this section for reference")

```
get_schema: str
```

Returns the schema of the Neptune database

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.__init__ "Copy anchor link to this section for reference")

```
__init__(
    host: str,
    port: int = 8182,
    use_https: bool = True,
    client: Any = None,
    credentials_profile_name: str | None = None,
    region_name: str | None = None,
    sign: bool = True,
    aws_access_key_id: SecretStr | None = None,
    aws_secret_access_key: SecretStr | None = None,
    aws_session_token: SecretStr | None = None,
    endpoint_url: str | None = None,
    config: Config | None = None,
    property_descriptions: dict[tuple[str, str], str] | None = None,
) -> None
```

Create a new Neptune graph wrapper instance.

#### query [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.NeptuneGraph.query "Copy anchor link to this section for reference")

```
query(query: str, params: dict = {}) -> list[dict[str, Any]]
```

Query Neptune database.

### BedrockLLM [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM "Copy anchor link to this section for reference")

Bases: `LLM`, `BedrockBase`

Bedrock models.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
<https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If a specific credential profile should be used, you must pass
the name of the profile from the `~/.aws/credentials` file that is to be used.

Make sure the credentials / roles used have the required policies to
access the Bedrock service.

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Transform a single input into an output. |
| `ainvoke` | Transform a single input into an output. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |
| `set_verbose` | If verbose is `None`, set it. |
| `generate_prompt` | Pass a sequence of prompts to the model and return model generations. |
| `agenerate_prompt` | Asynchronously pass a sequence of prompts and return model generations. |
| `with_structured_output` | Not implemented on this class. |
| `get_num_tokens_from_messages` | Get the number of tokens in the messages. |
| `validate_environment` | Validate that AWS credentials to and python package exists in environment. |
| `generate` | Pass a sequence of prompts to a model and return generations. |
| `agenerate` | Asynchronously pass a sequence of prompts to a model and return generations. |
| `__str__` | Return a string representation of the object for printing. |
| `dict` | Return a dictionary of the LLM. |
| `save` | Save the LLM. |
| `is_lc_serializable` | Return whether this model can be serialized by Langchain. |
| `get_lc_namespace` | Get the namespace of the langchain object. |
| `get_num_tokens` | Get the number of tokens present in the text. |
| `get_token_ids` | Return the ordered IDs of the tokens in a text. |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.InputType "Copy anchor link to this section for reference")

```
InputType: TypeAlias
```

Get the input type for this `Runnable`.

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.OutputType "Copy anchor link to this section for reference")

```
OutputType: type[str]
```

Get the input type for this `Runnable`.

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### cache `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.cache "Copy anchor link to this section for reference")

```
cache: BaseCache | bool | None = Field(default=None, exclude=True)
```

Whether to cache the response.

* If `True`, will use the global cache.
* If `False`, will not use a cache
* If `None`, will use the global cache if it's set, otherwise no cache.
* If instance of `BaseCache`, will use the provided cache.

Caching is not currently supported for streaming methods of models.

#### verbose `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.verbose "Copy anchor link to this section for reference")

```
verbose: bool = Field(default_factory=_get_verbosity, exclude=True, repr=False)
```

Whether to print out response text.

#### callbacks `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.callbacks "Copy anchor link to this section for reference")

```
callbacks: Callbacks = Field(default=None, exclude=True)
```

Callbacks to add to the run trace.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = Field(default=None, exclude=True)
```

Tags to add to the run trace.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = Field(default=None, exclude=True)
```

Metadata to add to the run trace.

#### custom\_get\_token\_ids `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.custom_get_token_ids "Copy anchor link to this section for reference")

```
custom_get_token_ids: Callable[[str], list[int]] | None = Field(
    default=None, exclude=True
)
```

Optional encoder to use for counting tokens.

#### client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.client "Copy anchor link to this section for reference")

```
client: Any = Field(default=None, exclude=True)
```

The bedrock runtime client for making data plane API calls

#### bedrock\_client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.bedrock_client "Copy anchor link to this section for reference")

```
bedrock_client: Any = Field(default=None, exclude=True)
```

The bedrock client for making control plane API calls

#### region\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.region_name "Copy anchor link to this section for reference")

```
region_name: str | None = Field(default=None, alias='region')
```

The aws region e.g., `us-west-2`. Falls back to `AWS_REGION` or
`AWS_DEFAULT_REGION` env variable or region specified in `~/.aws/config` in
case it is not provided here.

#### credentials\_profile\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.credentials_profile_name "Copy anchor link to this section for reference")

```
credentials_profile_name: str | None = Field(default=None, exclude=True)
```

The name of the profile in the `~/.aws/credentials` or `~/.aws/config files`,
which has either access keys or role information specified.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

#### aws\_access\_key\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_access_key_id "Copy anchor link to this section for reference")

```
aws_access_key_id: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_ACCESS_KEY_ID", default=None)
)
```

AWS access key id.

If provided, `aws_secret_access_key` must also be provided.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.

#### aws\_secret\_access\_key `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_secret_access_key "Copy anchor link to this section for reference")

```
aws_secret_access_key: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SECRET_ACCESS_KEY", default=None)
)
```

AWS `secret_access_key`.

If provided, `aws_access_key_id` must also be provided.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.

#### aws\_session\_token `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.aws_session_token "Copy anchor link to this section for reference")

```
aws_session_token: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SESSION_TOKEN", default=None)
)
```

AWS session token.

If provided, `aws_access_key_id` and `aws_secret_access_key` must also be
provided.

Not required unless using temporary credentials.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.

#### config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config "Copy anchor link to this section for reference")

```
config: Any = None
```

An optional `botocore.config.Config` instance to pass to the client.

#### provider `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.provider "Copy anchor link to this section for reference")

```
provider: str | None = None
```

The model provider, e.g., `'amazon'`, `'cohere'`, `'ai21'`, etc. When not
supplied, provider is extracted from the first part of the model\_id e.g.
`'amazon'` in `'amazon.titan-text-express-v1'`. This value should be provided
for model IDs that do not have the provider in them, e.g., custom and provisioned
models that have an ARN associated with them.

#### model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.model_id "Copy anchor link to this section for reference")

```
model_id: str = Field(alias='model')
```

Id of the model to call, e.g., `'amazon.titan-text-express-v1'`, this is
equivalent to the `modelId` property in the list-foundation-models api. For custom
and provisioned models, an ARN value is expected.

#### base\_model\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.base_model_id "Copy anchor link to this section for reference")

```
base_model_id: str | None = Field(default=None, alias='base_model')
```

An optional field to pass the base model id. If provided, this will be used over
the value of `model_id` to identify the base model.

#### model\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.model_kwargs "Copy anchor link to this section for reference")

```
model_kwargs: dict[str, Any] | None = None
```

Keyword arguments to pass to the model.

#### endpoint\_url `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.endpoint_url "Copy anchor link to this section for reference")

```
endpoint_url: str | None = None
```

Needed if you don't want to default to `'us-east-1'` endpoint

#### streaming `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.streaming "Copy anchor link to this section for reference")

```
streaming: bool = False
```

Whether to stream the results.

#### guardrails `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.guardrails "Copy anchor link to this section for reference")

```
guardrails: Mapping[str, Any] | None = {
    "trace": None,
    "guardrailIdentifier": None,
    "guardrailVersion": None,
}
```

An optional dictionary to configure guardrails for Bedrock.

This field `guardrails` consists of two keys: `'guardrailId'` and
`'guardrailVersion'`, which should be strings, but are initialized to None.

It's used to determine if specific guardrails are enabled and properly set.

Type

Optional[Mapping[str, str]]: A mapping with 'guardrailId' and
'guardrailVersion' keys.


Example

```
llm = BedrockLLM(model_id="<model_id>", client=<bedrock_client>,
    model_kwargs={},
    guardrails={
            "guardrailId": "<guardrail_id>",
            "guardrailVersion": "<guardrail_version>"})
```

To enable tracing for guardrails, set the 'trace' key to True and pass a callback handler to the
'run\_manager' parameter of the 'generate', '\_call' methods.

Example

```
llm = BedrockLLM(model_id="<model_id>", client=<bedrock_client>,
    model_kwargs={},
    guardrails={
            "guardrailId": "<guardrail_id>",
            "guardrailVersion": "<guardrail_version>",
            "trace": True},
    callbacks=[BedrockAsyncCallbackHandler()])
```

<https://python.langchain.com/docs/concepts/callbacks/> for more information on callback handlers.

class BedrockAsyncCallbackHandler(AsyncCallbackHandler):
async def on\_llm\_error(
self,
error: BaseException,
\*\*kwargs: Any,
) -> Any:
reason = kwargs.get("reason")
if reason == "GUARDRAIL\_INTERVENED":
...Logic to handle guardrail intervention...

#### service\_tier `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.service_tier "Copy anchor link to this section for reference")

```
service_tier: Literal['priority', 'default', 'flex', 'reserved'] | None = None
```

Service tier for model invocation.

Specifies the processing tier type used for serving the request.
Supported values are 'priority', 'default', 'flex', and 'reserved'.

* 'priority': Prioritized processing for lower latency
* 'default': Standard processing tier
* 'flex': Flexible processing tier with lower cost
* 'reserved': Reserved capacity for consistent performance

If not provided, AWS uses the default tier.

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict[str, Any]
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> str
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> str
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[LanguageModelInput],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any,
) -> list[str]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[LanguageModelInput],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any,
) -> list[str]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.stream "Copy anchor link to this section for reference")

```
stream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> Iterator[str]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream "Copy anchor link to this section for reference")

```
astream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[str]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

#### set\_verbose [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.set_verbose "Copy anchor link to this section for reference")

```
set_verbose(verbose: bool | None) -> bool
```

If verbose is `None`, set it.

This allows users to pass in `None` as verbose to access the global setting.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `verbose` | The verbosity setting to use.  **TYPE:** `bool | None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | The verbosity setting to use. |

#### generate\_prompt [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.generate_prompt "Copy anchor link to this section for reference")

```
generate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to the model and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### agenerate\_prompt `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.agenerate_prompt "Copy anchor link to this section for reference")

```
agenerate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### with\_structured\_output [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.with_structured_output "Copy anchor link to this section for reference")

```
with_structured_output(
    schema: dict | type, **kwargs: Any
) -> Runnable[LanguageModelInput, dict | BaseModel]
```

Not implemented on this class.

#### get\_num\_tokens\_from\_messages [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_num_tokens_from_messages "Copy anchor link to this section for reference")

```
get_num_tokens_from_messages(
    messages: list[BaseMessage], tools: Sequence | None = None
) -> int
```

Get the number of tokens in the messages.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

Note

* The base implementation of `get_num_tokens_from_messages` ignores tool
  schemas.
* The base implementation of `get_num_tokens_from_messages` adds additional
  prefixes to messages in represent user roles, which will add to the
  overall token count. Model-specific implementations may choose to
  handle this differently.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | The message inputs to tokenize.  **TYPE:** `list[BaseMessage]` |
| `tools` | If provided, sequence of dict, `BaseModel`, function, or `BaseTool` objects to be converted to tool schemas.  **TYPE:** `Sequence | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The sum of the number of tokens across the messages. |

#### validate\_environment [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.validate_environment "Copy anchor link to this section for reference")

```
validate_environment() -> Self
```

Validate that AWS credentials to and python package exists in environment.

#### generate [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.generate "Copy anchor link to this section for reference")

```
generate(
    prompts: list[str],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    *,
    tags: list[str] | list[list[str]] | None = None,
    metadata: dict[str, Any] | list[dict[str, Any]] | None = None,
    run_name: str | list[str] | None = None,
    run_id: UUID | list[UUID | None] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to a model and return generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of string prompts.  **TYPE:** `list[str]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks | list[Callbacks] | None`  **DEFAULT:** `None` |
| `tags` | List of tags to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `list[str] | list[list[str]] | None`  **DEFAULT:** `None` |
| `metadata` | List of metadata dictionaries to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `dict[str, Any] | list[dict[str, Any]] | None`  **DEFAULT:** `None` |
| `run_name` | List of run names to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `str | list[str] | None`  **DEFAULT:** `None` |
| `run_id` | List of run IDs to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `UUID | list[UUID | None] | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If prompts is not a list. |
| `ValueError` | If the length of `callbacks`, `tags`, `metadata`, or `run_name` (if provided) does not match the length of prompts. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### agenerate `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.agenerate "Copy anchor link to this section for reference")

```
agenerate(
    prompts: list[str],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    *,
    tags: list[str] | list[list[str]] | None = None,
    metadata: dict[str, Any] | list[dict[str, Any]] | None = None,
    run_name: str | list[str] | None = None,
    run_id: UUID | list[UUID | None] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts to a model and return generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of string prompts.  **TYPE:** `list[str]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks | list[Callbacks] | None`  **DEFAULT:** `None` |
| `tags` | List of tags to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `list[str] | list[list[str]] | None`  **DEFAULT:** `None` |
| `metadata` | List of metadata dictionaries to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `dict[str, Any] | list[dict[str, Any]] | None`  **DEFAULT:** `None` |
| `run_name` | List of run names to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `str | list[str] | None`  **DEFAULT:** `None` |
| `run_id` | List of run IDs to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `UUID | list[UUID | None] | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the length of `callbacks`, `tags`, `metadata`, or `run_name` (if provided) does not match the length of prompts. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### \_\_str\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.__str__ "Copy anchor link to this section for reference")

```
__str__() -> str
```

Return a string representation of the object for printing.

#### dict [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.dict "Copy anchor link to this section for reference")

```
dict(**kwargs: Any) -> dict
```

Return a dictionary of the LLM.

#### save [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.save "Copy anchor link to this section for reference")

```
save(file_path: Path | str) -> None
```

Save the LLM.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `file_path` | Path to file to save the LLM to.  **TYPE:** `Path | str` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the file path is not a string or Path object. |

Example

```
llm.save(file_path="path/llm.yaml")
```

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Return whether this model can be serialized by Langchain.

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the langchain object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | `["langchain", "llms", "bedrock"]` |

#### get\_num\_tokens [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_num_tokens "Copy anchor link to this section for reference")

```
get_num_tokens(text: str) -> int
```

Get the number of tokens present in the text.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The integer number of tokens in the text. |

#### get\_token\_ids [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.BedrockLLM.get_token_ids "Copy anchor link to this section for reference")

```
get_token_ids(text: str) -> list[int]
```

Return the ordered IDs of the tokens in a text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[int]` | A list of IDs corresponding to the tokens in the text, in order they occur in the text. |

### SagemakerEndpoint [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint "Copy anchor link to this section for reference")

Bases: `LLM`

Sagemaker Inference Endpoint models.

To use, you must supply the endpoint name from your deployed
Sagemaker model & the region where it is deployed.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
<https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If a specific credential profile should be used, you must pass
the name of the profile from the `~/.aws/credentials` file that is to be used.

Make sure the credentials / roles used have the required policies to
access the Sagemaker endpoint.

See: <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html>

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Transform a single input into an output. |
| `ainvoke` | Transform a single input into an output. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `is_lc_serializable` | Is this class serializable? |
| `get_lc_namespace` | Get the namespace of the LangChain object. |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |
| `set_verbose` | If verbose is `None`, set it. |
| `generate_prompt` | Pass a sequence of prompts to the model and return model generations. |
| `agenerate_prompt` | Asynchronously pass a sequence of prompts and return model generations. |
| `with_structured_output` | Not implemented on this class. |
| `get_token_ids` | Return the ordered IDs of the tokens in a text. |
| `get_num_tokens` | Get the number of tokens present in the text. |
| `get_num_tokens_from_messages` | Get the number of tokens in the messages. |
| `generate` | Pass a sequence of prompts to a model and return generations. |
| `agenerate` | Asynchronously pass a sequence of prompts to a model and return generations. |
| `__str__` | Return a string representation of the object for printing. |
| `dict` | Return a dictionary of the LLM. |
| `save` | Save the LLM. |
| `validate_environment` | Dont do anything if client provided externally |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.InputType "Copy anchor link to this section for reference")

```
InputType: TypeAlias
```

Get the input type for this `Runnable`.

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.OutputType "Copy anchor link to this section for reference")

```
OutputType: type[str]
```

Get the input type for this `Runnable`.

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### cache `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.cache "Copy anchor link to this section for reference")

```
cache: BaseCache | bool | None = Field(default=None, exclude=True)
```

Whether to cache the response.

* If `True`, will use the global cache.
* If `False`, will not use a cache
* If `None`, will use the global cache if it's set, otherwise no cache.
* If instance of `BaseCache`, will use the provided cache.

Caching is not currently supported for streaming methods of models.

#### verbose `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.verbose "Copy anchor link to this section for reference")

```
verbose: bool = Field(default_factory=_get_verbosity, exclude=True, repr=False)
```

Whether to print out response text.

#### callbacks `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.callbacks "Copy anchor link to this section for reference")

```
callbacks: Callbacks = Field(default=None, exclude=True)
```

Callbacks to add to the run trace.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = Field(default=None, exclude=True)
```

Tags to add to the run trace.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = Field(default=None, exclude=True)
```

Metadata to add to the run trace.

#### custom\_get\_token\_ids `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.custom_get_token_ids "Copy anchor link to this section for reference")

```
custom_get_token_ids: Callable[[str], list[int]] | None = Field(
    default=None, exclude=True
)
```

Optional encoder to use for counting tokens.

#### client `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.client "Copy anchor link to this section for reference")

```
client: Any = None
```

Boto3 client for sagemaker runtime

#### endpoint\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_name "Copy anchor link to this section for reference")

```
endpoint_name: str = ''
```

The name of the endpoint from the deployed Sagemaker model.

Must be unique within an AWS Region.

#### inference\_component\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.inference_component_name "Copy anchor link to this section for reference")

```
inference_component_name: str | None = None
```

Optional name of the inference component to invoke if specified with endpoint name.

#### region\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.region_name "Copy anchor link to this section for reference")

```
region_name: str = ''
```

The aws region where the Sagemaker model is deployed, eg. `'us-west-2'`.

#### credentials\_profile\_name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.credentials_profile_name "Copy anchor link to this section for reference")

```
credentials_profile_name: str | None = None
```

The name of the profile in the `~/.aws/credentials` or `~/.aws/config` files,
which has either access keys or role information specified.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

#### aws\_access\_key\_id `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_access_key_id "Copy anchor link to this section for reference")

```
aws_access_key_id: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_ACCESS_KEY_ID", default=None)
)
```

AWS access key id.

If provided, aws\_secret\_access\_key must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_ACCESS\_KEY\_ID' environment variable.

#### aws\_secret\_access\_key `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_secret_access_key "Copy anchor link to this section for reference")

```
aws_secret_access_key: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SECRET_ACCESS_KEY", default=None)
)
```

AWS `secret_access_key`.

If provided, `aws_access_key_id` must also be provided.

If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.

#### aws\_session\_token `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.aws_session_token "Copy anchor link to this section for reference")

```
aws_session_token: SecretStr | None = Field(
    default_factory=secret_from_env("AWS_SESSION_TOKEN", default=None)
)
```

AWS session token.

If provided, `aws_access_key_id` and `aws_secret_access_key` must also be
provided.

Not required unless using temporary credentials.

See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.

#### config `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config "Copy anchor link to this section for reference")

```
config: Any = None
```

An optional `botocore.config.Config` instance to pass to the client.

#### endpoint\_url `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_url "Copy anchor link to this section for reference")

```
endpoint_url: str | None = None
```

Needed if you don't want to default to `'us-east-1'` endpoint

#### content\_handler `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.content_handler "Copy anchor link to this section for reference")

```
content_handler: LLMContentHandler
```

The content handler class that provides an input and output transform functions
to handle formats between LLM and the endpoint.

#### streaming `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.streaming "Copy anchor link to this section for reference")

```
streaming: bool = False
```

Whether to stream the results.

#### model\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.model_kwargs "Copy anchor link to this section for reference")

```
model_kwargs: dict | None = None
```

Keyword arguments to pass to the model.

#### endpoint\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.endpoint_kwargs "Copy anchor link to this section for reference")

```
endpoint_kwargs: dict | None = None
```

Optional attributes passed to the invoke\_endpoint
function. See `boto3` docs for more info.

[boto3](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html)

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> str
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> str
```

Transform a single input into an output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[LanguageModelInput],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any,
) -> list[str]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[LanguageModelInput],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any,
) -> list[str]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.stream "Copy anchor link to this section for reference")

```
stream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> Iterator[str]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream "Copy anchor link to this section for reference")

```
astream(
    input: LanguageModelInput,
    config: RunnableConfig | None = None,
    *,
    stop: list[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[str]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Is this class serializable?

By design, even if a class inherits from `Serializable`, it is not serializable
by default. This is to prevent accidental serialization of objects that should
not be serialized.

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether the class is serializable. Default is `False`. |

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the LangChain object.

For example, if the class is
[`langchain.llms.openai.OpenAI`](https://reference.langchain.com/python/integrations/langchain_openai/OpenAI/#langchain_openai.OpenAI "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">OpenAI</span>"), then the namespace is
`["langchain", "llms", "openai"]`

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | The namespace. |

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

#### set\_verbose [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.set_verbose "Copy anchor link to this section for reference")

```
set_verbose(verbose: bool | None) -> bool
```

If verbose is `None`, set it.

This allows users to pass in `None` as verbose to access the global setting.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `verbose` | The verbosity setting to use.  **TYPE:** `bool | None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | The verbosity setting to use. |

#### generate\_prompt [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.generate_prompt "Copy anchor link to this section for reference")

```
generate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to the model and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### agenerate\_prompt `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.agenerate_prompt "Copy anchor link to this section for reference")

```
agenerate_prompt(
    prompts: list[PromptValue],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts and return model generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of `PromptValue` objects.  A `PromptValue` is an object that can be converted to match the format of any language model (string for pure text generation models and `BaseMessage` objects for chat models).  **TYPE:** `list[PromptValue]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generation` objects for each input prompt and additional model provider-specific output. |

#### with\_structured\_output [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.with_structured_output "Copy anchor link to this section for reference")

```
with_structured_output(
    schema: dict | type, **kwargs: Any
) -> Runnable[LanguageModelInput, dict | BaseModel]
```

Not implemented on this class.

#### get\_token\_ids [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_token_ids "Copy anchor link to this section for reference")

```
get_token_ids(text: str) -> list[int]
```

Return the ordered IDs of the tokens in a text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[int]` | A list of IDs corresponding to the tokens in the text, in order they occur in the text. |

#### get\_num\_tokens [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_num_tokens "Copy anchor link to this section for reference")

```
get_num_tokens(text: str) -> int
```

Get the number of tokens present in the text.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The string input to tokenize.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The integer number of tokens in the text. |

#### get\_num\_tokens\_from\_messages [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.get_num_tokens_from_messages "Copy anchor link to this section for reference")

```
get_num_tokens_from_messages(
    messages: list[BaseMessage], tools: Sequence | None = None
) -> int
```

Get the number of tokens in the messages.

Useful for checking if an input fits in a model's context window.

This should be overridden by model-specific implementations to provide accurate
token counts via model-specific tokenizers.

Note

* The base implementation of `get_num_tokens_from_messages` ignores tool
  schemas.
* The base implementation of `get_num_tokens_from_messages` adds additional
  prefixes to messages in represent user roles, which will add to the
  overall token count. Model-specific implementations may choose to
  handle this differently.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | The message inputs to tokenize.  **TYPE:** `list[BaseMessage]` |
| `tools` | If provided, sequence of dict, `BaseModel`, function, or `BaseTool` objects to be converted to tool schemas.  **TYPE:** `Sequence | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The sum of the number of tokens across the messages. |

#### generate [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.generate "Copy anchor link to this section for reference")

```
generate(
    prompts: list[str],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    *,
    tags: list[str] | list[list[str]] | None = None,
    metadata: dict[str, Any] | list[dict[str, Any]] | None = None,
    run_name: str | list[str] | None = None,
    run_id: UUID | list[UUID | None] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Pass a sequence of prompts to a model and return generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of string prompts.  **TYPE:** `list[str]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks | list[Callbacks] | None`  **DEFAULT:** `None` |
| `tags` | List of tags to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `list[str] | list[list[str]] | None`  **DEFAULT:** `None` |
| `metadata` | List of metadata dictionaries to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `dict[str, Any] | list[dict[str, Any]] | None`  **DEFAULT:** `None` |
| `run_name` | List of run names to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `str | list[str] | None`  **DEFAULT:** `None` |
| `run_id` | List of run IDs to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `UUID | list[UUID | None] | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If prompts is not a list. |
| `ValueError` | If the length of `callbacks`, `tags`, `metadata`, or `run_name` (if provided) does not match the length of prompts. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### agenerate `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.agenerate "Copy anchor link to this section for reference")

```
agenerate(
    prompts: list[str],
    stop: list[str] | None = None,
    callbacks: Callbacks | list[Callbacks] | None = None,
    *,
    tags: list[str] | list[list[str]] | None = None,
    metadata: dict[str, Any] | list[dict[str, Any]] | None = None,
    run_name: str | list[str] | None = None,
    run_id: UUID | list[UUID | None] | None = None,
    **kwargs: Any,
) -> LLMResult
```

Asynchronously pass a sequence of prompts to a model and return generations.

This method should make use of batched calls for models that expose a batched
API.

Use this method when you want to:

1. Take advantage of batched calls,
2. Need more output from the model than just the top generated value,
3. Are building chains that are agnostic to the underlying language model
   type (e.g., pure text completion models vs chat models).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompts` | List of string prompts.  **TYPE:** `list[str]` |
| `stop` | Stop words to use when generating.  Model output is cut off at the first occurrence of any of these substrings.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `callbacks` | `Callbacks` to pass through.  Used for executing additional functionality, such as logging or streaming, throughout generation.  **TYPE:** `Callbacks | list[Callbacks] | None`  **DEFAULT:** `None` |
| `tags` | List of tags to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `list[str] | list[list[str]] | None`  **DEFAULT:** `None` |
| `metadata` | List of metadata dictionaries to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `dict[str, Any] | list[dict[str, Any]] | None`  **DEFAULT:** `None` |
| `run_name` | List of run names to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `str | list[str] | None`  **DEFAULT:** `None` |
| `run_id` | List of run IDs to associate with each prompt. If provided, the length of the list must match the length of the prompts list.  **TYPE:** `UUID | list[UUID | None] | None`  **DEFAULT:** `None` |
| `**kwargs` | Arbitrary additional keyword arguments.  These are usually passed to the model provider API call.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the length of `callbacks`, `tags`, `metadata`, or `run_name` (if provided) does not match the length of prompts. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `LLMResult` | An `LLMResult`, which contains a list of candidate `Generations` for each input prompt and additional model provider-specific output. |

#### \_\_str\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.__str__ "Copy anchor link to this section for reference")

```
__str__() -> str
```

Return a string representation of the object for printing.

#### dict [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.dict "Copy anchor link to this section for reference")

```
dict(**kwargs: Any) -> dict
```

Return a dictionary of the LLM.

#### save [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.save "Copy anchor link to this section for reference")

```
save(file_path: Path | str) -> None
```

Save the LLM.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `file_path` | Path to file to save the LLM to.  **TYPE:** `Path | str` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the file path is not a string or Path object. |

Example

```
llm.save(file_path="path/llm.yaml")
```

#### validate\_environment [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.SagemakerEndpoint.validate_environment "Copy anchor link to this section for reference")

```
validate_environment() -> Self
```

Dont do anything if client provided externally

### AmazonKendraRetriever [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever "Copy anchor link to this section for reference")

Bases: `BaseRetriever`

`Amazon Kendra Index` retriever.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `index_id` | Kendra index id  **TYPE:** `str` |
| `region_name` | The aws region e.g., `'us-west-2'`. Falls back to `AWS_REGION`/`AWS_DEFAULT_REGION` env variable or region specified in `~/.aws/config`.  **TYPE:** `str | None` |
| `credentials_profile_name` | The name of the profile in the `~/.aws/credentials` or `~/.aws/config` files, which has either access keys or role information specified. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used.  **TYPE:** `str | None` |
| `aws_access_key_id` | AWS access key id. If provided, `aws_secret_access_key` must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used.  See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>  If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.  **TYPE:** `SecretStr | None` |
| `aws_secret_access_key` | AWS secret\_access\_key. If provided, `aws_access_key_id` must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used.  See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>  If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.  **TYPE:** `SecretStr | None` |
| `aws_session_token` | AWS session token. If provided, `aws_access_key_id` and `aws_secret_access_key` must also be provided. Not required unless using temporary credentials.  See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>  If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.  **TYPE:** `SecretStr | None` |
| `endpoint_url` | Needed if you don't want to default to `'us-east-1'` endpoint.  **TYPE:** `str | None` |
| `config` | An optional `botocore.config.Config` instance to pass to the client.  **TYPE:** `Any` |
| `top_k` | No of results to return  **TYPE:** `int` |
| `attribute_filter` | Additional filtering of results based on metadata  See: <https://docs.aws.amazon.com/kendra/latest/APIReference>  **TYPE:** `dict | None` |
| `page_content_formatter` | generates the Document page\_content allowing access to all result item attributes. By default, it uses the item's title and excerpt.  **TYPE:** `Callable[[ResultItem], str]` |
| `client` | boto3 client for Kendra  **TYPE:** `Any` |
| `user_context` | Provides information about the user context See: <https://docs.aws.amazon.com/kendra/latest/APIReference>  **TYPE:** `dict | None` |

Example

```
retriever = AmazonKendraRetriever(
    index_id="c0806df7-e76b-4bce-9b5c-d5582f6b1a03"
)
```

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Invoke the retriever to get relevant documents. |
| `ainvoke` | Asynchronously invoke the retriever to get relevant documents. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `is_lc_serializable` | Is this class serializable? |
| `get_lc_namespace` | Get the namespace of the LangChain object. |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.InputType "Copy anchor link to this section for reference")

```
InputType: type[Input]
```

Input type.

The type of input this `Runnable` accepts specified as a type annotation.

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the input type cannot be inferred. |

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.OutputType "Copy anchor link to this section for reference")

```
OutputType: type[Output]
```

Output Type.

The type of output this `Runnable` produces specified as a type annotation.

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the output type cannot be inferred. |

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = None
```

Optional list of tags associated with the retriever.

These tags will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = None
```

Optional metadata associated with the retriever.

This metadata will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: str, config: RunnableConfig | None = None, **kwargs: Any
) -> list[Document]
```

Invoke the retriever to get relevant documents.

Main entry point for synchronous retriever invocations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The query string.  **TYPE:** `str` |
| `config` | Configuration for the retriever.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the retriever.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of relevant documents. |

Examples:

```
retriever.invoke("query")
```

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: str, config: RunnableConfig | None = None, **kwargs: Any
) -> list[Document]
```

Asynchronously invoke the retriever to get relevant documents.

Main entry point for asynchronous retriever invocations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The query string.  **TYPE:** `str` |
| `config` | Configuration for the retriever.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the retriever.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of relevant documents. |

Examples:

```
await retriever.ainvoke("query")
```

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.stream "Copy anchor link to this section for reference")

```
stream(
    input: Input, config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream "Copy anchor link to this section for reference")

```
astream(
    input: Input, config: RunnableConfig | None = None, **kwargs: Any | None
) -> AsyncIterator[Output]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Is this class serializable?

By design, even if a class inherits from `Serializable`, it is not serializable
by default. This is to prevent accidental serialization of objects that should
not be serialized.

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether the class is serializable. Default is `False`. |

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the LangChain object.

For example, if the class is
[`langchain.llms.openai.OpenAI`](https://reference.langchain.com/python/integrations/langchain_openai/OpenAI/#langchain_openai.OpenAI "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">OpenAI</span>"), then the namespace is
`["langchain", "llms", "openai"]`

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | The namespace. |

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKendraRetriever.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

### AmazonKnowledgeBasesRetriever [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever "Copy anchor link to this section for reference")

Bases: `BaseRetriever`

`Amazon Bedrock Knowledge Bases` retrieval.

See <https://aws.amazon.com/bedrock/knowledge-bases> for more info.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `knowledge_base_id` | Knowledge Base ID.  **TYPE:** `str` |
| `region_name` | The aws region e.g., `'us-west-2'`. Fallback to `AWS_REGION`/`AWS_DEFAULT_REGION` env variable or region specified in `~/.aws/config`.  **TYPE:** `str | None` |
| `credentials_profile_name` | The name of the profile in the `~/.aws/credentials` or `~/.aws/config` files, which has either access keys or role information specified. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used.  **TYPE:** `str | None` |
| `aws_access_key_id` | AWS access key id. If provided, `aws_secret_access_key` must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.  **TYPE:** `SecretStr | None` |
| `aws_secret_access_key` | AWS `secret_access_key`. If provided, `aws_access_key_id` must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.  **TYPE:** `SecretStr | None` |
| `aws_session_token` | AWS session token. If provided, `aws_access_key_id` and `aws_secret_access_key` must also be provided. Not required unless using temporary credentials. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.  **TYPE:** `SecretStr | None` |
| `endpoint_url` | Needed if you don't want to default to `'us-east-1'` endpoint.  **TYPE:** `str | None` |
| `config` | An optional `botocore.config.Config` instance to pass to the client.  **TYPE:** `Any` |
| `client` | boto3 client for bedrock agent runtime.  **TYPE:** `Any` |
| `guardrail_config` | Configuration information for a guardrail that you want to use in the request.  **TYPE:** `dict[str, Any] | None` |
| `retrieval_config` | Optional configuration for retrieval specified as a Python object (RetrievalConfig) or as a dictionary.  **TYPE:** `RetrievalConfig | dict[str, Any] | None` |
| `min_score_confidence` | Minimum score confidence threshold for filtering results (0.0 to 1.0).  **TYPE:** `Annotated[float | None, Field(ge=0.0, le=1.0, default=None)]` |

Example

```
from langchain_community.retrievers import AmazonKnowledgeBasesRetriever

retriever = AmazonKnowledgeBasesRetriever(
    knowledge_base_id="<knowledge-base-id>",
    retrieval_config={
        "vectorSearchConfiguration": {
            "numberOfResults": 4
        }
    },
)
```

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Invoke the retriever to get relevant documents. |
| `ainvoke` | Asynchronously invoke the retriever to get relevant documents. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `is_lc_serializable` | Is this class serializable? |
| `get_lc_namespace` | Get the namespace of the LangChain object. |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.InputType "Copy anchor link to this section for reference")

```
InputType: type[Input]
```

Input type.

The type of input this `Runnable` accepts specified as a type annotation.

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the input type cannot be inferred. |

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.OutputType "Copy anchor link to this section for reference")

```
OutputType: type[Output]
```

Output Type.

The type of output this `Runnable` produces specified as a type annotation.

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the output type cannot be inferred. |

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = None
```

Optional list of tags associated with the retriever.

These tags will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = None
```

Optional metadata associated with the retriever.

This metadata will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: str, config: RunnableConfig | None = None, **kwargs: Any
) -> list[Document]
```

Invoke the retriever to get relevant documents.

Main entry point for synchronous retriever invocations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The query string.  **TYPE:** `str` |
| `config` | Configuration for the retriever.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the retriever.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of relevant documents. |

Examples:

```
retriever.invoke("query")
```

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: str, config: RunnableConfig | None = None, **kwargs: Any
) -> list[Document]
```

Asynchronously invoke the retriever to get relevant documents.

Main entry point for asynchronous retriever invocations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The query string.  **TYPE:** `str` |
| `config` | Configuration for the retriever.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the retriever.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of relevant documents. |

Examples:

```
await retriever.ainvoke("query")
```

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.stream "Copy anchor link to this section for reference")

```
stream(
    input: Input, config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream "Copy anchor link to this section for reference")

```
astream(
    input: Input, config: RunnableConfig | None = None, **kwargs: Any | None
) -> AsyncIterator[Output]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Is this class serializable?

By design, even if a class inherits from `Serializable`, it is not serializable
by default. This is to prevent accidental serialization of objects that should
not be serialized.

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether the class is serializable. Default is `False`. |

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the LangChain object.

For example, if the class is
[`langchain.llms.openai.OpenAI`](https://reference.langchain.com/python/integrations/langchain_openai/OpenAI/#langchain_openai.OpenAI "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">OpenAI</span>"), then the namespace is
`["langchain", "llms", "openai"]`

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | The namespace. |

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonKnowledgeBasesRetriever.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

### AmazonS3VectorsRetriever [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever "Copy anchor link to this section for reference")

Bases: `VectorStoreRetriever`

AmazonS3VectorsRetriever is a retriever for Amazon S3 Vectors.

Examples:

```
from langchain_aws.vectorstores import AmazonS3Vectors

vector_store = AmazonS3Vectors(...)
retriever = vector_store.as_retriever()
```

| METHOD | DESCRIPTION |
| --- | --- |
| `get_name` | Get the name of the `Runnable`. |
| `get_input_schema` | Get a Pydantic model that can be used to validate input to the `Runnable`. |
| `get_input_jsonschema` | Get a JSON schema that represents the input to the `Runnable`. |
| `get_output_schema` | Get a Pydantic model that can be used to validate output to the `Runnable`. |
| `get_output_jsonschema` | Get a JSON schema that represents the output of the `Runnable`. |
| `config_schema` | The type of config this `Runnable` accepts specified as a Pydantic model. |
| `get_config_jsonschema` | Get a JSON schema that represents the config of the `Runnable`. |
| `get_graph` | Return a graph representation of this `Runnable`. |
| `get_prompts` | Return a list of prompts used by this `Runnable`. |
| `__or__` | Runnable "or" operator. |
| `__ror__` | Runnable "reverse-or" operator. |
| `pipe` | Pipe `Runnable` objects. |
| `pick` | Pick keys from the output `dict` of this `Runnable`. |
| `assign` | Assigns new fields to the `dict` output of this `Runnable`. |
| `invoke` | Invoke the retriever to get relevant documents. |
| `ainvoke` | Asynchronously invoke the retriever to get relevant documents. |
| `batch` | Default implementation runs invoke in parallel using a thread pool executor. |
| `batch_as_completed` | Run `invoke` in parallel on a list of inputs. |
| `abatch` | Default implementation runs `ainvoke` in parallel using `asyncio.gather`. |
| `abatch_as_completed` | Run `ainvoke` in parallel on a list of inputs. |
| `stream` | Default implementation of `stream`, which calls `invoke`. |
| `astream` | Default implementation of `astream`, which calls `ainvoke`. |
| `astream_log` | Stream all output from a `Runnable`, as reported to the callback system. |
| `astream_events` | Generate a stream of events. |
| `transform` | Transform inputs to outputs. |
| `atransform` | Transform inputs to outputs. |
| `bind` | Bind arguments to a `Runnable`, returning a new `Runnable`. |
| `with_config` | Bind config to a `Runnable`, returning a new `Runnable`. |
| `with_listeners` | Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`. |
| `with_alisteners` | Bind async lifecycle listeners to a `Runnable`. |
| `with_types` | Bind input and output types to a `Runnable`, returning a new `Runnable`. |
| `with_retry` | Create a new `Runnable` that retries the original `Runnable` on exceptions. |
| `map` | Return a new `Runnable` that maps a list of inputs to a list of outputs. |
| `with_fallbacks` | Add fallbacks to a `Runnable`, returning a new `Runnable`. |
| `as_tool` | Create a `BaseTool` from a `Runnable`. |
| `__init__` |  |
| `is_lc_serializable` | Is this class serializable? |
| `get_lc_namespace` | Get the namespace of the LangChain object. |
| `lc_id` | Return a unique identifier for this class for serialization purposes. |
| `to_json` | Serialize the `Runnable` to JSON. |
| `to_json_not_implemented` | Serialize a "not implemented" object. |
| `configurable_fields` | Configure particular `Runnable` fields at runtime. |
| `configurable_alternatives` | Configure alternatives for `Runnable` objects that can be set at runtime. |
| `validate_search_type` | Validate search type. |
| `add_documents` | Add documents to the `VectorStore`. |
| `aadd_documents` | Async add documents to the `VectorStore`. |

#### name `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.name "Copy anchor link to this section for reference")

```
name: str | None = None
```

The name of the `Runnable`. Used for debugging and tracing.

#### InputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.InputType "Copy anchor link to this section for reference")

```
InputType: type[Input]
```

Input type.

The type of input this `Runnable` accepts specified as a type annotation.

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the input type cannot be inferred. |

#### OutputType `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.OutputType "Copy anchor link to this section for reference")

```
OutputType: type[Output]
```

Output Type.

The type of output this `Runnable` produces specified as a type annotation.

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the output type cannot be inferred. |

#### input\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.input_schema "Copy anchor link to this section for reference")

```
input_schema: type[BaseModel]
```

The type of input this `Runnable` accepts specified as a Pydantic model.

#### output\_schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.output_schema "Copy anchor link to this section for reference")

```
output_schema: type[BaseModel]
```

Output schema.

The type of output this `Runnable` produces specified as a Pydantic model.

#### config\_specs `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.config_specs "Copy anchor link to this section for reference")

```
config_specs: list[ConfigurableFieldSpec]
```

List configurable fields for this `Runnable`.

#### lc\_secrets `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_secrets "Copy anchor link to this section for reference")

```
lc_secrets: dict[str, str]
```

A map of constructor argument names to secret ids.

For example, `{"openai_api_key": "OPENAI_API_KEY"}`

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

List of attribute names that should be included in the serialized kwargs.

These attributes must be accepted by the constructor.

Default is an empty dictionary.

#### tags `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.tags "Copy anchor link to this section for reference")

```
tags: list[str] | None = None
```

Optional list of tags associated with the retriever.

These tags will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

#### metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.metadata "Copy anchor link to this section for reference")

```
metadata: dict[str, Any] | None = None
```

Optional metadata associated with the retriever.

This metadata will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

#### vectorstore `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.vectorstore "Copy anchor link to this section for reference")

```
vectorstore: VectorStore
```

VectorStore to use for retrieval.

#### search\_type `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.search_type "Copy anchor link to this section for reference")

```
search_type: str = 'similarity'
```

Type of search to perform.

#### search\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.search_kwargs "Copy anchor link to this section for reference")

```
search_kwargs: dict = Field(default_factory=dict)
```

Keyword arguments to pass to the search function.

#### get\_name [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_name "Copy anchor link to this section for reference")

```
get_name(suffix: str | None = None, *, name: str | None = None) -> str
```

Get the name of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `suffix` | An optional suffix to append to the name.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `name` | An optional name to use instead of the `Runnable`'s name.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The name of the `Runnable`. |

#### get\_input\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_input_schema "Copy anchor link to this section for reference")

```
get_input_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate input to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic input schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an input schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate input. |

#### get\_input\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_input_jsonschema "Copy anchor link to this section for reference")

```
get_input_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the input to the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the input to the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_input_jsonschema())
```

Added in `langchain-core` 0.3.0

#### get\_output\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_output_schema "Copy anchor link to this section for reference")

```
get_output_schema(config: RunnableConfig | None = None) -> type[BaseModel]
```

Get a Pydantic model that can be used to validate output to the `Runnable`.

`Runnable` objects that leverage the `configurable_fields` and
`configurable_alternatives` methods will have a dynamic output schema that
depends on which configuration the `Runnable` is invoked with.

This method allows to get an output schema for a specific configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate output. |

#### get\_output\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_output_jsonschema "Copy anchor link to this section for reference")

```
get_output_jsonschema(config: RunnableConfig | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the output of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | A config to use when generating the schema.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the output of the `Runnable`. |

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


runnable = RunnableLambda(add_one)

print(runnable.get_output_jsonschema())
```

Added in `langchain-core` 0.3.0

#### config\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.config_schema "Copy anchor link to this section for reference")

```
config_schema(*, include: Sequence[str] | None = None) -> type[BaseModel]
```

The type of config this `Runnable` accepts specified as a Pydantic model.

To mark a field as configurable, see the `configurable_fields`
and `configurable_alternatives` methods.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `type[BaseModel]` | A Pydantic model that can be used to validate config. |

#### get\_config\_jsonschema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_config_jsonschema "Copy anchor link to this section for reference")

```
get_config_jsonschema(*, include: Sequence[str] | None = None) -> dict[str, Any]
```

Get a JSON schema that represents the config of the `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `include` | A list of fields to include in the config schema.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any]` | A JSON schema that represents the config of the `Runnable`. |

Added in `langchain-core` 0.3.0

#### get\_graph [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None) -> Graph
```

Return a graph representation of this `Runnable`.

#### get\_prompts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_prompts "Copy anchor link to this section for reference")

```
get_prompts(config: RunnableConfig | None = None) -> list[BasePromptTemplate]
```

Return a list of prompts used by this `Runnable`.

#### \_\_or\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__or__ "Copy anchor link to this section for reference")

```
__or__(
    other: Runnable[Any, Other]
    | Callable[[Iterator[Any]], Iterator[Other]]
    | Callable[[AsyncIterator[Any]], AsyncIterator[Other]]
    | Callable[[Any], Other]
    | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any],
) -> RunnableSerializable[Input, Other]
```

Runnable "or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Any, Other] | Callable[[Iterator[Any]], Iterator[Other]] | Callable[[AsyncIterator[Any]], AsyncIterator[Other]] | Callable[[Any], Other] | Mapping[str, Runnable[Any, Other] | Callable[[Any], Other] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### \_\_ror\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__ror__ "Copy anchor link to this section for reference")

```
__ror__(
    other: Runnable[Other, Any]
    | Callable[[Iterator[Other]], Iterator[Any]]
    | Callable[[AsyncIterator[Other]], AsyncIterator[Any]]
    | Callable[[Other], Any]
    | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any],
) -> RunnableSerializable[Other, Output]
```

Runnable "reverse-or" operator.

Compose this `Runnable` with another object to create a
`RunnableSequence`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another `Runnable` or a `Runnable`-like object.  **TYPE:** `Runnable[Other, Any] | Callable[[Iterator[Other]], Iterator[Any]] | Callable[[AsyncIterator[Other]], AsyncIterator[Any]] | Callable[[Other], Any] | Mapping[str, Runnable[Other, Any] | Callable[[Other], Any] | Any]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Other, Output]` | A new `Runnable`. |

#### pipe [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.pipe "Copy anchor link to this section for reference")

```
pipe(
    *others: Runnable[Any, Other] | Callable[[Any], Other], name: str | None = None
) -> RunnableSerializable[Input, Other]
```

Pipe `Runnable` objects.

Compose this `Runnable` with `Runnable`-like objects to make a
`RunnableSequence`.

Equivalent to `RunnableSequence(self, *others)` or `self | others[0] | ...`

Example

```
from langchain_core.runnables import RunnableLambda


def add_one(x: int) -> int:
    return x + 1


def mul_two(x: int) -> int:
    return x * 2


runnable_1 = RunnableLambda(add_one)
runnable_2 = RunnableLambda(mul_two)
sequence = runnable_1.pipe(runnable_2)
# Or equivalently:
# sequence = runnable_1 | runnable_2
# sequence = RunnableSequence(first=runnable_1, last=runnable_2)
sequence.invoke(1)
await sequence.ainvoke(1)
# -> 4

sequence.batch([1, 2, 3])
await sequence.abatch([1, 2, 3])
# -> [4, 6, 8]
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*others` | Other `Runnable` or `Runnable`-like objects to compose  **TYPE:** `Runnable[Any, Other] | Callable[[Any], Other]`  **DEFAULT:** `()` |
| `name` | An optional name for the resulting `RunnableSequence`.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Other]` | A new `Runnable`. |

#### pick [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.pick "Copy anchor link to this section for reference")

```
pick(keys: str | list[str]) -> RunnableSerializable[Any, Any]
```

Pick keys from the output `dict` of this `Runnable`.

Pick a single key

```
import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)
chain = RunnableMap(str=as_str, json=as_json)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3]}

json_only_chain = chain.pick("json")
json_only_chain.invoke("[1, 2, 3]")
# -> [1, 2, 3]
```

Pick a list of keys

```
from typing import Any

import json

from langchain_core.runnables import RunnableLambda, RunnableMap

as_str = RunnableLambda(str)
as_json = RunnableLambda(json.loads)


def as_bytes(x: Any) -> bytes:
    return bytes(x, "utf-8")


chain = RunnableMap(
    str=as_str, json=as_json, bytes=RunnableLambda(as_bytes)
)

chain.invoke("[1, 2, 3]")
# -> {"str": "[1, 2, 3]", "json": [1, 2, 3], "bytes": b"[1, 2, 3]"}

json_and_bytes_chain = chain.pick(["json", "bytes"])
json_and_bytes_chain.invoke("[1, 2, 3]")
# -> {"json": [1, 2, 3], "bytes": b"[1, 2, 3]"}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | A key or list of keys to pick from the output dict.  **TYPE:** `str | list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | a new `Runnable`. |

#### assign [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.assign "Copy anchor link to this section for reference")

```
assign(
    **kwargs: Runnable[dict[str, Any], Any]
    | Callable[[dict[str, Any]], Any]
    | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]],
) -> RunnableSerializable[Any, Any]
```

Assigns new fields to the `dict` output of this `Runnable`.

```
from langchain_core.language_models.fake import FakeStreamingListLLM
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import SystemMessagePromptTemplate
from langchain_core.runnables import Runnable
from operator import itemgetter

prompt = (
    SystemMessagePromptTemplate.from_template("You are a nice assistant.")
    + "{question}"
)
model = FakeStreamingListLLM(responses=["foo-lish"])

chain: Runnable = prompt | model | {"str": StrOutputParser()}

chain_with_assign = chain.assign(hello=itemgetter("str") | model)

print(chain_with_assign.input_schema.model_json_schema())
# {'title': 'PromptInput', 'type': 'object', 'properties':
{'question': {'title': 'Question', 'type': 'string'}}}
print(chain_with_assign.output_schema.model_json_schema())
# {'title': 'RunnableSequenceOutput', 'type': 'object', 'properties':
{'str': {'title': 'Str',
'type': 'string'}, 'hello': {'title': 'Hello', 'type': 'string'}}}
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A mapping of keys to `Runnable` or `Runnable`-like objects that will be invoked with the entire output dict of this `Runnable`.  **TYPE:** `Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any] | Mapping[str, Runnable[dict[str, Any], Any] | Callable[[dict[str, Any]], Any]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Any, Any]` | A new `Runnable`. |

#### invoke [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: str, config: RunnableConfig | None = None, **kwargs: Any
) -> list[Document]
```

Invoke the retriever to get relevant documents.

Main entry point for synchronous retriever invocations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The query string.  **TYPE:** `str` |
| `config` | Configuration for the retriever.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the retriever.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of relevant documents. |

Examples:

```
retriever.invoke("query")
```

#### ainvoke `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: str, config: RunnableConfig | None = None, **kwargs: Any
) -> list[Document]
```

Asynchronously invoke the retriever to get relevant documents.

Main entry point for asynchronous retriever invocations.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The query string.  **TYPE:** `str` |
| `config` | Configuration for the retriever.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the retriever.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of relevant documents. |

Examples:

```
await retriever.ainvoke("query")
```

#### batch [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.batch "Copy anchor link to this section for reference")

```
batch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs invoke in parallel using a thread pool executor.

The default implementation of batch works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`. The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### batch\_as\_completed [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.batch_as_completed "Copy anchor link to this section for reference")

```
batch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> Iterator[tuple[int, Output | Exception]]
```

Run `invoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `tuple[int, Output | Exception]` | Tuples of the index of the input and the output from the `Runnable`. |

#### abatch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.abatch "Copy anchor link to this section for reference")

```
abatch(
    inputs: list[Input],
    config: RunnableConfig | list[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> list[Output]
```

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

The default implementation of `batch` works well for IO bound runnables.

Subclasses must override this method if they can batch more efficiently;
e.g., if the underlying `Runnable` uses an API which supports a batch mode.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `list[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | list[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Output]` | A list of outputs from the `Runnable`. |

#### abatch\_as\_completed `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.abatch_as_completed "Copy anchor link to this section for reference")

```
abatch_as_completed(
    inputs: Sequence[Input],
    config: RunnableConfig | Sequence[RunnableConfig] | None = None,
    *,
    return_exceptions: bool = False,
    **kwargs: Any | None,
) -> AsyncIterator[tuple[int, Output | Exception]]
```

Run `ainvoke` in parallel on a list of inputs.

Yields results as they complete.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inputs` | A list of inputs to the `Runnable`.  **TYPE:** `Sequence[Input]` |
| `config` | A config to use when invoking the `Runnable`.  The config supports standard keys like `'tags'`, `'metadata'` for tracing purposes, `'max_concurrency'` for controlling how much work to do in parallel, and other keys.  Please refer to `RunnableConfig` for more details.  **TYPE:** `RunnableConfig | Sequence[RunnableConfig] | None`  **DEFAULT:** `None` |
| `return_exceptions` | Whether to return exceptions instead of raising them.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[int, Output | Exception]]` | A tuple of the index of the input and the output from the `Runnable`. |

#### stream [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.stream "Copy anchor link to this section for reference")

```
stream(
    input: Input, config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Default implementation of `stream`, which calls `invoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### astream `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream "Copy anchor link to this section for reference")

```
astream(
    input: Input, config: RunnableConfig | None = None, **kwargs: Any | None
) -> AsyncIterator[Output]
```

Default implementation of `astream`, which calls `ainvoke`.

Subclasses must override this method if they support streaming output.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Input` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### astream\_log `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream_log "Copy anchor link to this section for reference")

```
astream_log(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    diff: bool = True,
    with_streamed_output_list: bool = True,
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]
```

Stream all output from a `Runnable`, as reported to the callback system.

This includes all inner runs of LLMs, Retrievers, Tools, etc.

Output is streamed as Log objects, which include a list of
Jsonpatch ops that describe how the state of the run has changed in each
step, and the final state of the run.

The Jsonpatch ops can be applied in order to construct state.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `diff` | Whether to yield diffs between each step or the current state.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `with_streamed_output_list` | Whether to yield the `streamed_output` list.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `include_names` | Only include logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude logs with these names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude logs with these types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude logs with these tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[RunLogPatch] | AsyncIterator[RunLog]` | A `RunLogPatch` or `RunLog` object. |

#### astream\_events `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.astream_events "Copy anchor link to this section for reference")

```
astream_events(
    input: Any,
    config: RunnableConfig | None = None,
    *,
    version: Literal["v1", "v2"] = "v2",
    include_names: Sequence[str] | None = None,
    include_types: Sequence[str] | None = None,
    include_tags: Sequence[str] | None = None,
    exclude_names: Sequence[str] | None = None,
    exclude_types: Sequence[str] | None = None,
    exclude_tags: Sequence[str] | None = None,
    **kwargs: Any,
) -> AsyncIterator[StreamEvent]
```

Generate a stream of events.

Use to create an iterator over `StreamEvent` that provide real-time information
about the progress of the `Runnable`, including `StreamEvent` from intermediate
results.

A `StreamEvent` is a dictionary with the following schema:

* `event`: Event names are of the format:
  `on_[runnable_type]_(start|stream|end)`.
* `name`: The name of the `Runnable` that generated the event.
* `run_id`: Randomly generated ID associated with the given execution of the
  `Runnable` that emitted the event. A child `Runnable` that gets invoked as
  part of the execution of a parent `Runnable` is assigned its own unique ID.
* `parent_ids`: The IDs of the parent runnables that generated the event. The
  root `Runnable` will have an empty list. The order of the parent IDs is from
  the root to the immediate parent. Only available for v2 version of the API.
  The v1 version of the API will return an empty list.
* `tags`: The tags of the `Runnable` that generated the event.
* `metadata`: The metadata of the `Runnable` that generated the event.
* `data`: The data associated with the event. The contents of this field
  depend on the type of event. See the table below for more details.

Below is a table that illustrates some events that might be emitted by various
chains. Metadata fields have been omitted from the table for brevity.
Chain definitions have been included after the table.

Note

This reference table is for the v2 version of the schema.

| event | name | chunk | input | output |
| --- | --- | --- | --- | --- |
| `on_chat_model_start` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` |  |
| `on_chat_model_stream` | `'[model name]'` | `AIMessageChunk(content="hello")` |  |  |
| `on_chat_model_end` | `'[model name]'` |  | `{"messages": [[SystemMessage, HumanMessage]]}` | `AIMessageChunk(content="hello world")` |
| `on_llm_start` | `'[model name]'` |  | `{'input': 'hello'}` |  |
| `on_llm_stream` | `'[model name]'` | `'Hello'` |  |  |
| `on_llm_end` | `'[model name]'` |  | `'Hello human!'` |  |
| `on_chain_start` | `'format_docs'` |  |  |  |
| `on_chain_stream` | `'format_docs'` | `'hello world!, goodbye world!'` |  |  |
| `on_chain_end` | `'format_docs'` |  | `[Document(...)]` | `'hello world!, goodbye world!'` |
| `on_tool_start` | `'some_tool'` |  | `{"x": 1, "y": "2"}` |  |
| `on_tool_end` | `'some_tool'` |  |  | `{"x": 1, "y": "2"}` |
| `on_retriever_start` | `'[retriever name]'` |  | `{"query": "hello"}` |  |
| `on_retriever_end` | `'[retriever name]'` |  | `{"query": "hello"}` | `[Document(...), ..]` |
| `on_prompt_start` | `'[template_name]'` |  | `{"question": "hello"}` |  |
| `on_prompt_end` | `'[template_name]'` |  | `{"question": "hello"}` | `ChatPromptValue(messages: [SystemMessage, ...])` |

In addition to the standard events, users can also dispatch custom events (see example below).

Custom events will be only be surfaced with in the v2 version of the API!

A custom event has following format:

| Attribute | Type | Description |
| --- | --- | --- |
| `name` | `str` | A user defined name for the event. |
| `data` | `Any` | The data associated with the event. This can be anything, though we suggest making it JSON serializable. |

Here are declarations associated with the standard events shown above:

`format_docs`:

```
def format_docs(docs: list[Document]) -> str:
    '''Format the docs.'''
    return ", ".join([doc.page_content for doc in docs])


format_docs = RunnableLambda(format_docs)
```

`some_tool`:

```
@tool
def some_tool(x: int, y: str) -> dict:
    '''Some_tool.'''
    return {"x": x, "y": y}
```

`prompt`:

```
template = ChatPromptTemplate.from_messages(
    [
        ("system", "You are Cat Agent 007"),
        ("human", "{question}"),
    ]
).with_config({"run_name": "my_template", "tags": ["my_template"]})
```

Example

```
from langchain_core.runnables import RunnableLambda


async def reverse(s: str) -> str:
    return s[::-1]


chain = RunnableLambda(func=reverse)

events = [
    event async for event in chain.astream_events("hello", version="v2")
]

# Will produce the following events
# (run_id, and parent_ids has been omitted for brevity):
[
    {
        "data": {"input": "hello"},
        "event": "on_chain_start",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"chunk": "olleh"},
        "event": "on_chain_stream",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
    {
        "data": {"output": "olleh"},
        "event": "on_chain_end",
        "metadata": {},
        "name": "reverse",
        "tags": [],
    },
]
```

Dispatch custom event

```
from langchain_core.callbacks.manager import (
    adispatch_custom_event,
)
from langchain_core.runnables import RunnableLambda, RunnableConfig
import asyncio


async def slow_thing(some_input: str, config: RunnableConfig) -> str:
    """Do something that takes a long time."""
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 1 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    await adispatch_custom_event(
        "progress_event",
        {"message": "Finished step 2 of 3"},
        config=config # Must be included for python < 3.10
    )
    await asyncio.sleep(1) # Placeholder for some slow operation
    return "Done"

slow_thing = RunnableLambda(slow_thing)

async for event in slow_thing.astream_events("some_input", version="v2"):
    print(event)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the `Runnable`.  **TYPE:** `Any` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `version` | The version of the schema to use, either `'v2'` or `'v1'`.  Users should use `'v2'`.  `'v1'` is for backwards compatibility and will be deprecated in `0.4.0`.  No default will be assigned until the API is stabilized. custom events will only be surfaced in `'v2'`.  **TYPE:** `Literal['v1', 'v2']`  **DEFAULT:** `'v2'` |
| `include_names` | Only include events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_types` | Only include events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `include_tags` | Only include events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_names` | Exclude events from `Runnable` objects with matching names.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_types` | Exclude events from `Runnable` objects with matching types.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `exclude_tags` | Exclude events from `Runnable` objects with matching tags.  **TYPE:** `Sequence[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  These will be passed to `astream_log` as this implementation of `astream_events` is built on top of `astream_log`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[StreamEvent]` | An async stream of `StreamEvent`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | If the version is not `'v1'` or `'v2'`. |

#### transform [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.transform "Copy anchor link to this section for reference")

```
transform(
    input: Iterator[Input], config: RunnableConfig | None = None, **kwargs: Any | None
) -> Iterator[Output]
```

Transform inputs to outputs.

Default implementation of transform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An iterator of inputs to the `Runnable`.  **TYPE:** `Iterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Output` | The output of the `Runnable`. |

#### atransform `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.atransform "Copy anchor link to this section for reference")

```
atransform(
    input: AsyncIterator[Input],
    config: RunnableConfig | None = None,
    **kwargs: Any | None,
) -> AsyncIterator[Output]
```

Transform inputs to outputs.

Default implementation of atransform, which buffers input and calls `astream`.

Subclasses must override this method if they can start producing output while
input is still being generated.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | An async iterator of inputs to the `Runnable`.  **TYPE:** `AsyncIterator[Input]` |
| `config` | The config to use for the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any | None`  **DEFAULT:** `{}` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[Output]` | The output of the `Runnable`. |

#### bind [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.bind "Copy anchor link to this section for reference")

```
bind(**kwargs: Any) -> Runnable[Input, Output]
```

Bind arguments to a `Runnable`, returning a new `Runnable`.

Useful when a `Runnable` in a chain requires an argument that is not
in the output of the previous `Runnable` or included in the user input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | The arguments to bind to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the arguments bound. |

Example

```
from langchain_ollama import ChatOllama
from langchain_core.output_parsers import StrOutputParser

model = ChatOllama(model="llama3.1")

# Without bind
chain = model | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two three four five.'

# With bind
chain = model.bind(stop=["three"]) | StrOutputParser()

chain.invoke("Repeat quoted words exactly: 'One two three four five.'")
# Output is 'One two'
```

#### with\_config [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_config "Copy anchor link to this section for reference")

```
with_config(
    config: RunnableConfig | None = None, **kwargs: Any
) -> Runnable[Input, Output]
```

Bind config to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to bind to the `Runnable`.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the `Runnable`.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the config bound. |

#### with\_listeners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_listeners "Copy anchor link to this section for reference")

```
with_listeners(
    *,
    on_start: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
    on_end: Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None = None,
    on_error: Callable[[Run], None]
    | Callable[[Run, RunnableConfig], None]
    | None = None,
) -> Runnable[Input, Output]
```

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called before the `Runnable` starts running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_end` | Called after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |
| `on_error` | Called if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `Callable[[Run], None] | Callable[[Run, RunnableConfig], None] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda
from langchain_core.tracers.schemas import Run

import time


def test_runnable(time_to_sleep: int):
    time.sleep(time_to_sleep)


def fn_start(run_obj: Run):
    print("start_time:", run_obj.start_time)


def fn_end(run_obj: Run):
    print("end_time:", run_obj.end_time)


chain = RunnableLambda(test_runnable).with_listeners(
    on_start=fn_start, on_end=fn_end
)
chain.invoke(2)
```

#### with\_alisteners [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_alisteners "Copy anchor link to this section for reference")

```
with_alisteners(
    *,
    on_start: AsyncListener | None = None,
    on_end: AsyncListener | None = None,
    on_error: AsyncListener | None = None,
) -> Runnable[Input, Output]
```

Bind async lifecycle listeners to a `Runnable`.

Returns a new `Runnable`.

The Run object contains information about the run, including its `id`,
`type`, `input`, `output`, `error`, `start_time`, `end_time`, and
any tags or metadata added to the run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `on_start` | Called asynchronously before the `Runnable` starts running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_end` | Called asynchronously after the `Runnable` finishes running, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |
| `on_error` | Called asynchronously if the `Runnable` throws an error, with the `Run` object.  **TYPE:** `AsyncListener | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the listeners bound. |

Example

```
from langchain_core.runnables import RunnableLambda, Runnable
from datetime import datetime, timezone
import time
import asyncio


def format_t(timestamp: float) -> str:
    return datetime.fromtimestamp(timestamp, tz=timezone.utc).isoformat()


async def test_runnable(time_to_sleep: int):
    print(f"Runnable[{time_to_sleep}s]: starts at {format_t(time.time())}")
    await asyncio.sleep(time_to_sleep)
    print(f"Runnable[{time_to_sleep}s]: ends at {format_t(time.time())}")


async def fn_start(run_obj: Runnable):
    print(f"on start callback starts at {format_t(time.time())}")
    await asyncio.sleep(3)
    print(f"on start callback ends at {format_t(time.time())}")


async def fn_end(run_obj: Runnable):
    print(f"on end callback starts at {format_t(time.time())}")
    await asyncio.sleep(2)
    print(f"on end callback ends at {format_t(time.time())}")


runnable = RunnableLambda(test_runnable).with_alisteners(
    on_start=fn_start, on_end=fn_end
)


async def concurrent_runs():
    await asyncio.gather(runnable.ainvoke(2), runnable.ainvoke(3))


asyncio.run(concurrent_runs())
# Result:
# on start callback starts at 2025-03-01T07:05:22.875378+00:00
# on start callback starts at 2025-03-01T07:05:22.875495+00:00
# on start callback ends at 2025-03-01T07:05:25.878862+00:00
# on start callback ends at 2025-03-01T07:05:25.878947+00:00
# Runnable[2s]: starts at 2025-03-01T07:05:25.879392+00:00
# Runnable[3s]: starts at 2025-03-01T07:05:25.879804+00:00
# Runnable[2s]: ends at 2025-03-01T07:05:27.881998+00:00
# on end callback starts at 2025-03-01T07:05:27.882360+00:00
# Runnable[3s]: ends at 2025-03-01T07:05:28.881737+00:00
# on end callback starts at 2025-03-01T07:05:28.882428+00:00
# on end callback ends at 2025-03-01T07:05:29.883893+00:00
# on end callback ends at 2025-03-01T07:05:30.884831+00:00
```

#### with\_types [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_types "Copy anchor link to this section for reference")

```
with_types(
    *, input_type: type[Input] | None = None, output_type: type[Output] | None = None
) -> Runnable[Input, Output]
```

Bind input and output types to a `Runnable`, returning a new `Runnable`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input_type` | The input type to bind to the `Runnable`.  **TYPE:** `type[Input] | None`  **DEFAULT:** `None` |
| `output_type` | The output type to bind to the `Runnable`.  **TYPE:** `type[Output] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` with the types bound. |

#### with\_retry [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_retry "Copy anchor link to this section for reference")

```
with_retry(
    *,
    retry_if_exception_type: tuple[type[BaseException], ...] = (Exception,),
    wait_exponential_jitter: bool = True,
    exponential_jitter_params: ExponentialJitterParams | None = None,
    stop_after_attempt: int = 3,
) -> Runnable[Input, Output]
```

Create a new `Runnable` that retries the original `Runnable` on exceptions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_if_exception_type` | A tuple of exception types to retry on.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `wait_exponential_jitter` | Whether to add jitter to the wait time between retries.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `stop_after_attempt` | The maximum number of attempts to make before giving up.  **TYPE:** `int`  **DEFAULT:** `3` |
| `exponential_jitter_params` | Parameters for `tenacity.wait_exponential_jitter`. Namely: `initial`, `max`, `exp_base`, and `jitter` (all `float` values).  **TYPE:** `ExponentialJitterParams | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[Input, Output]` | A new `Runnable` that retries the original `Runnable` on exceptions. |

Example

```
from langchain_core.runnables import RunnableLambda

count = 0


def _lambda(x: int) -> None:
    global count
    count = count + 1
    if x == 1:
        raise ValueError("x is 1")
    else:
        pass


runnable = RunnableLambda(_lambda)
try:
    runnable.with_retry(
        stop_after_attempt=2,
        retry_if_exception_type=(ValueError,),
    ).invoke(1)
except ValueError:
    pass

assert count == 2
```

#### map [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.map "Copy anchor link to this section for reference")

```
map() -> Runnable[list[Input], list[Output]]
```

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Calls `invoke` with each input.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runnable[list[Input], list[Output]]` | A new `Runnable` that maps a list of inputs to a list of outputs. |

Example

```
from langchain_core.runnables import RunnableLambda


def _lambda(x: int) -> int:
    return x + 1


runnable = RunnableLambda(_lambda)
print(runnable.map().invoke([1, 2, 3]))  # [2, 3, 4]
```

#### with\_fallbacks [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.with_fallbacks "Copy anchor link to this section for reference")

```
with_fallbacks(
    fallbacks: Sequence[Runnable[Input, Output]],
    *,
    exceptions_to_handle: tuple[type[BaseException], ...] = (Exception,),
    exception_key: str | None = None,
) -> RunnableWithFallbacks[Input, Output]
```

Add fallbacks to a `Runnable`, returning a new `Runnable`.

The new `Runnable` will try the original `Runnable`, and then each fallback
in order, upon failures.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

Example

```
from typing import Iterator

from langchain_core.runnables import RunnableGenerator


def _generate_immediate_error(input: Iterator) -> Iterator[str]:
    raise ValueError()
    yield ""


def _generate(input: Iterator) -> Iterator[str]:
    yield from "foo bar"


runnable = RunnableGenerator(_generate_immediate_error).with_fallbacks(
    [RunnableGenerator(_generate)]
)
print("".join(runnable.stream({})))  # foo bar
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `fallbacks` | A sequence of runnables to try if the original `Runnable` fails.  **TYPE:** `Sequence[Runnable[Input, Output]]` |
| `exceptions_to_handle` | A tuple of exception types to handle.  **TYPE:** `tuple[type[BaseException], ...]`  **DEFAULT:** `(Exception,)` |
| `exception_key` | If `string` is specified then handled exceptions will be passed to fallbacks as part of the input under the specified key.  If `None`, exceptions will not be passed to fallbacks.  If used, the base `Runnable` and its fallbacks must accept a dictionary as input.  **TYPE:** `str | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableWithFallbacks[Input, Output]` | A new `Runnable` that will try the original `Runnable`, and then each Fallback in order, upon failures. |

#### as\_tool [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.as_tool "Copy anchor link to this section for reference")

```
as_tool(
    args_schema: type[BaseModel] | None = None,
    *,
    name: str | None = None,
    description: str | None = None,
    arg_types: dict[str, type] | None = None,
) -> BaseTool
```

Create a `BaseTool` from a `Runnable`.

`as_tool` will instantiate a `BaseTool` with a name, description, and
`args_schema` from a `Runnable`. Where possible, schemas are inferred
from `runnable.get_input_schema`.

Alternatively (e.g., if the `Runnable` takes a dict as input and the specific
`dict` keys are not typed), the schema can be specified directly with
`args_schema`.

You can also pass `arg_types` to just specify the required arguments and their
types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `args_schema` | The schema for the tool.  **TYPE:** `type[BaseModel] | None`  **DEFAULT:** `None` |
| `name` | The name of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | The description of the tool.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `arg_types` | A dictionary of argument names to types.  **TYPE:** `dict[str, type] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | A `BaseTool` instance. |

`TypedDict` input

```
from typing_extensions import TypedDict
from langchain_core.runnables import RunnableLambda


class Args(TypedDict):
    a: int
    b: list[int]


def f(x: Args) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool()
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `args_schema`

```
from typing import Any
from pydantic import BaseModel, Field
from langchain_core.runnables import RunnableLambda

def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))

class FSchema(BaseModel):
    """Apply a function to an integer and list of integers."""

    a: int = Field(..., description="Integer")
    b: list[int] = Field(..., description="List of ints")

runnable = RunnableLambda(f)
as_tool = runnable.as_tool(FSchema)
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`dict` input, specifying schema via `arg_types`

```
from typing import Any
from langchain_core.runnables import RunnableLambda


def f(x: dict[str, Any]) -> str:
    return str(x["a"] * max(x["b"]))


runnable = RunnableLambda(f)
as_tool = runnable.as_tool(arg_types={"a": int, "b": list[int]})
as_tool.invoke({"a": 3, "b": [1, 2]})
```

`str` input

```
from langchain_core.runnables import RunnableLambda


def f(x: str) -> str:
    return x + "a"


def g(x: str) -> str:
    return x + "z"


runnable = RunnableLambda(f) | g
as_tool = runnable.as_tool()
as_tool.invoke("b")
```

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.__init__ "Copy anchor link to this section for reference")

```
__init__(*args: Any, **kwargs: Any) -> None
```

#### is\_lc\_serializable `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.is_lc_serializable "Copy anchor link to this section for reference")

```
is_lc_serializable() -> bool
```

Is this class serializable?

By design, even if a class inherits from `Serializable`, it is not serializable
by default. This is to prevent accidental serialization of objects that should
not be serialized.

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether the class is serializable. Default is `False`. |

#### get\_lc\_namespace `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.get_lc_namespace "Copy anchor link to this section for reference")

```
get_lc_namespace() -> list[str]
```

Get the namespace of the LangChain object.

For example, if the class is
[`langchain.llms.openai.OpenAI`](https://reference.langchain.com/python/integrations/langchain_openai/OpenAI/#langchain_openai.OpenAI "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">OpenAI</span>"), then the namespace is
`["langchain", "llms", "openai"]`

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | The namespace. |

#### lc\_id `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.lc_id "Copy anchor link to this section for reference")

```
lc_id() -> list[str]
```

Return a unique identifier for this class for serialization purposes.

The unique identifier is a list of strings that describes the path
to the object.

For example, for the class `langchain.llms.openai.OpenAI`, the id is
`["langchain", "llms", "openai", "OpenAI"]`.

#### to\_json [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.to_json "Copy anchor link to this section for reference")

```
to_json() -> SerializedConstructor | SerializedNotImplemented
```

Serialize the `Runnable` to JSON.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedConstructor | SerializedNotImplemented` | A JSON-serializable representation of the `Runnable`. |

#### to\_json\_not\_implemented [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.to_json_not_implemented "Copy anchor link to this section for reference")

```
to_json_not_implemented() -> SerializedNotImplemented
```

Serialize a "not implemented" object.

| RETURNS | DESCRIPTION |
| --- | --- |
| `SerializedNotImplemented` | `SerializedNotImplemented`. |

#### configurable\_fields [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.configurable_fields "Copy anchor link to this section for reference")

```
configurable_fields(
    **kwargs: AnyConfigurableField,
) -> RunnableSerializable[Input, Output]
```

Configure particular `Runnable` fields at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | A dictionary of `ConfigurableField` instances to configure.  **TYPE:** `AnyConfigurableField`  **DEFAULT:** `{}` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If a configuration key is not found in the `Runnable`. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the fields configured. |

Example

```
from langchain_core.runnables import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatOpenAI(max_tokens=20).configurable_fields(
    max_tokens=ConfigurableField(
        id="output_token_number",
        name="Max tokens in the output",
        description="The maximum number of tokens in the output",
    )
)

# max_tokens = 20
print(
    "max_tokens_20: ", model.invoke("tell me something about chess").content
)

# max_tokens = 200
print(
    "max_tokens_200: ",
    model.with_config(configurable={"output_token_number": 200})
    .invoke("tell me something about chess")
    .content,
)
```

#### configurable\_alternatives [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.configurable_alternatives "Copy anchor link to this section for reference")

```
configurable_alternatives(
    which: ConfigurableField,
    *,
    default_key: str = "default",
    prefix_keys: bool = False,
    **kwargs: Runnable[Input, Output] | Callable[[], Runnable[Input, Output]],
) -> RunnableSerializable[Input, Output]
```

Configure alternatives for `Runnable` objects that can be set at runtime.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `which` | The `ConfigurableField` instance that will be used to select the alternative.  **TYPE:** `ConfigurableField` |
| `default_key` | The default key to use if no alternative is selected.  **TYPE:** `str`  **DEFAULT:** `'default'` |
| `prefix_keys` | Whether to prefix the keys with the `ConfigurableField` id.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `**kwargs` | A dictionary of keys to `Runnable` instances or callables that return `Runnable` instances.  **TYPE:** `Runnable[Input, Output] | Callable[[], Runnable[Input, Output]]`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableSerializable[Input, Output]` | A new `Runnable` with the alternatives configured. |

Example

```
from langchain_anthropic import ChatAnthropic
from langchain_core.runnables.utils import ConfigurableField
from langchain_openai import ChatOpenAI

model = ChatAnthropic(
    model_name="claude-sonnet-4-5-20250929"
).configurable_alternatives(
    ConfigurableField(id="llm"),
    default_key="anthropic",
    openai=ChatOpenAI(),
)

# uses the default model ChatAnthropic
print(model.invoke("which organization created you?").content)

# uses ChatOpenAI
print(
    model.with_config(configurable={"llm": "openai"})
    .invoke("which organization created you?")
    .content
)
```

#### validate\_search\_type `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.validate_search_type "Copy anchor link to this section for reference")

```
validate_search_type(values: dict) -> Any
```

Validate search type.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `values` | Values to validate.  **TYPE:** `dict` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Any` | Validated values. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If `search_type` is not one of the allowed search types. |
| `ValueError` | If `score_threshold` is not specified with a float value(`0~1`) |

#### add\_documents [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.add_documents "Copy anchor link to this section for reference")

```
add_documents(documents: list[Document], **kwargs: Any) -> list[str]
```

Add documents to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | Documents to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `**kwargs` | Other keyword arguments that subclasses might use.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs of the added texts. |

#### aadd\_documents `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3VectorsRetriever.aadd_documents "Copy anchor link to this section for reference")

```
aadd_documents(documents: list[Document], **kwargs: Any) -> list[str]
```

Async add documents to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | Documents to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `**kwargs` | Other keyword arguments that subclasses might use.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs of the added texts. |

### InMemorySemanticCache [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache "Copy anchor link to this section for reference")

Bases: `BaseCache`

Cache that uses MemoryDB as a vector-store backend.

| METHOD | DESCRIPTION |
| --- | --- |
| `alookup` | Async look up based on `prompt` and `llm_string`. |
| `aupdate` | Async update cache based on `prompt` and `llm_string`. |
| `aclear` | Async clear cache that can take additional keyword arguments. |
| `__init__` | Initialize by passing in the `init` GPTCache func |
| `clear` | Clear semantic cache for a given llm\_string. |
| `lookup` | Look up based on prompt and llm\_string. |
| `update` | Update cache based on prompt and llm\_string. |

#### alookup `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.alookup "Copy anchor link to this section for reference")

```
alookup(prompt: str, llm_string: str) -> RETURN_VAL_TYPE | None
```

Async look up based on `prompt` and `llm_string`.

A cache implementation is expected to generate a key from the 2-tuple
of `prompt` and `llm_string` (e.g., by concatenating them with a delimiter).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompt` | A string representation of the prompt.  In the case of a chat model, the prompt is a non-trivial serialization of the prompt into the language model.  **TYPE:** `str` |
| `llm_string` | A string representation of the LLM configuration.  This is used to capture the invocation parameters of the LLM (e.g., model name, temperature, stop tokens, max tokens, etc.).  These invocation parameters are serialized into a string representation.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RETURN_VAL_TYPE | None` | On a cache miss, return `None`. On a cache hit, return the cached value. The cached value is a list of `Generation` (or subclasses). |

#### aupdate `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.aupdate "Copy anchor link to this section for reference")

```
aupdate(prompt: str, llm_string: str, return_val: RETURN_VAL_TYPE) -> None
```

Async update cache based on `prompt` and `llm_string`.

The prompt and llm\_string are used to generate a key for the cache.
The key should match that of the look up method.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prompt` | A string representation of the prompt.  In the case of a chat model, the prompt is a non-trivial serialization of the prompt into the language model.  **TYPE:** `str` |
| `llm_string` | A string representation of the LLM configuration.  This is used to capture the invocation parameters of the LLM (e.g., model name, temperature, stop tokens, max tokens, etc.).  These invocation parameters are serialized into a string representation.  **TYPE:** `str` |
| `return_val` | The value to be cached. The value is a list of `Generation` (or subclasses).  **TYPE:** `RETURN_VAL_TYPE` |

#### aclear `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.aclear "Copy anchor link to this section for reference")

```
aclear(**kwargs: Any) -> None
```

Async clear cache that can take additional keyword arguments.

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.__init__ "Copy anchor link to this section for reference")

```
__init__(redis_url: str, embedding: Embeddings, score_threshold: float = 0.2)
```

Initialize by passing in the `init` GPTCache func

| PARAMETER | DESCRIPTION |
| --- | --- |
| `redis_url` | URL to connect to MemoryDB.  **TYPE:** `str` |
| `embedding` | Embedding provider for semantic encoding and search.  **TYPE:** `Embedding` |
| `score_threshold` | **TYPE:** `(float, 0.2)`  **DEFAULT:** `0.2` |

Example: ```python
from langchain\_core.globals import set\_llm\_cache

```
from langchain_aws.cache import InMemorySemanticCache

set_llm_cache(InMemorySemanticCache(
    redis_url="redis://localhost:6379",
    embedding=OpenAIEmbeddings()
))
```
```

#### clear [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.clear "Copy anchor link to this section for reference")

```
clear(**kwargs: Any) -> None
```

Clear semantic cache for a given llm\_string.

#### lookup [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.lookup "Copy anchor link to this section for reference")

```
lookup(prompt: str, llm_string: str) -> RETURN_VAL_TYPE | None
```

Look up based on prompt and llm\_string.

#### update [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemorySemanticCache.update "Copy anchor link to this section for reference")

```
update(prompt: str, llm_string: str, return_val: RETURN_VAL_TYPE) -> None
```

Update cache based on prompt and llm\_string.

### InMemoryVectorStore [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore "Copy anchor link to this section for reference")

Bases: `VectorStore`

InMemoryVectorStore vector database.

To use, you should have the `redis` python package installed
for AWS MemoryDB:

```
```bash
pip install redis
```
```

Once running, you can connect to the MemoryDB server with the following url schemas:
- redis://: # simple connection
- redis://:@: # connection with authentication
- rediss://: # connection with SSL
- rediss://:@: # connection with SSL and auth

Examples:

The following examples show various ways to use the Redis VectorStore with
LangChain.

For all the following examples assume we have the following imports

```
from langchain_aws.vectorstores import InMemoryVectorStore
```

Initialize, create index, and load Documents:

```
from langchain_aws.vectorstores import InMemoryVectorStore

rds = InMemoryVectorStore.from_documents(
    documents, # a list of Document objects from loaders or created
    embeddings, # an Embeddings object
    redis_url="redis://cluster_endpoint:6379",
)
```

Initialize, create index, and load Documents with metadata:

```
rds = InMemoryVectorStore.from_texts(
    texts, # a list of strings
    metadata, # a list of metadata dicts
    embeddings, # an Embeddings object
    redis_url="redis://cluster_endpoint:6379",
)
```

Initialize, create index, and load Documents with metadata and return keys

```
```python
rds, keys = InMemoryVectorStore.from_texts_return_keys(
    texts, # a list of strings
    metadata, # a list of metadata dicts
    embeddings, # an Embeddings object
    redis_url="redis://cluster_endpoint:6379",
)
```
```

For use cases where the index needs to stay alive, you can initialize
with an index name such that it's easier to reference later

```
```python
rds = InMemoryVectorStore.from_texts(
    texts, # a list of strings
    metadata, # a list of metadata dicts
    embeddings, # an Embeddings object
    index_name="my-index",
    redis_url="redis://cluster_endpoint:6379",
)
```
```

Initialize and connect to an existing index (from above)

```
```python
# must pass in schema and key_prefix from another index
existing_rds = InMemoryVectorStore.from_existing_index(
    embeddings, # an Embeddings object
    index_name="my-index",
    schema=rds.schema, # schema dumped from another index
    key_prefix=rds.key_prefix, # key prefix from another index
    redis_url="redis://username:password@cluster_endpoint:6379",
)
```
```

Advanced examples:

Custom vector schema can be supplied to change the way that
MemoryDB creates the underlying vector schema. This is useful
for production use cases where you want to optimize the
vector schema for your use case. ex. using HNSW instead of
FLAT (knn) which is the default

```
```python
vector_schema = {
    "algorithm": "HNSW"
}

rds = InMemoryVectorStore.from_texts(
    texts, # a list of strings
    metadata, # a list of metadata dicts
    embeddings, # an Embeddings object
    vector_schema=vector_schema,
    redis_url="redis://cluster_endpoint:6379",
)
```
```

Custom index schema can be supplied to change the way that the
metadata is indexed. This is useful for you would like to use the
hybrid querying (filtering) capability of MemoryDB.

By default, this implementation will automatically generate the index
schema according to the following rules:
- All strings are indexed as text fields
- All numbers are indexed as numeric fields
- All lists of strings are indexed as tag fields (joined by
langchain\_aws.vectorstores.inmemorydb.constants.INMEMORYDB\_TAG\_SEPARATOR)
- All None values are not indexed but still stored in MemoryDB these are
not retrievable through the interface here, but the raw MemoryDB client
can be used to retrieve them.
- All other types are not indexed

To override these rules, you can pass in a custom index schema like the following

```
```yaml
tag:
    - name: credit_score
text:
    - name: user
    - name: job
```
```

Typically, the `credit_score` field would be a text field since it's a string,
however, we can override this behavior by specifying the field type as shown with
the yaml config (can also be a dictionary) above and the code below.

```
```python
rds = InMemoryVectorStore.from_texts(
    texts, # a list of strings
    metadata, # a list of metadata dicts
    embeddings, # an Embeddings object
    index_schema="path/to/index_schema.yaml", # can also be a dictionary
    redis_url="redis://cluster_endpoint:6379",
)
```
```

When connecting to an existing index where a custom schema has been applied, it's
important to pass in the same schema to the `from_existing_index` method.
Otherwise, the schema for newly added samples will be incorrect and metadata
will not be returned.

| METHOD | DESCRIPTION |
| --- | --- |
| `get_by_ids` | Get documents by their IDs. |
| `aget_by_ids` | Async get documents by their IDs. |
| `adelete` | Async delete by vector ID or other criteria. |
| `aadd_texts` | Async run more texts through the embeddings and add to the `VectorStore`. |
| `add_documents` | Add or update documents in the `VectorStore`. |
| `aadd_documents` | Async run more documents through the embeddings and add to the `VectorStore`. |
| `search` | Return docs most similar to query using a specified search type. |
| `asearch` | Async return docs most similar to query using a specified search type. |
| `asimilarity_search_with_score` | Async run similarity search with distance. |
| `similarity_search_with_relevance_scores` | Return docs and relevance scores in the range `[0, 1]`. |
| `asimilarity_search_with_relevance_scores` | Async return docs and relevance scores in the range `[0, 1]`. |
| `asimilarity_search` | Async return docs most similar to query. |
| `asimilarity_search_by_vector` | Async return docs most similar to embedding vector. |
| `amax_marginal_relevance_search` | Async return docs selected using the maximal marginal relevance. |
| `max_marginal_relevance_search_by_vector` | Return docs selected using the maximal marginal relevance. |
| `amax_marginal_relevance_search_by_vector` | Async return docs selected using the maximal marginal relevance. |
| `from_documents` | Return `VectorStore` initialized from documents and embeddings. |
| `afrom_documents` | Async return `VectorStore` initialized from documents and embeddings. |
| `afrom_texts` | Async return `VectorStore` initialized from texts and embeddings. |
| `__init__` | Initialize MemoryDB vector store with necessary components. |
| `from_texts_return_keys` | Create a InMemoryVectorStore vectorstore from raw documents. |
| `from_texts` | Create a InMemoryVectorStore vectorstore from a list of texts. |
| `from_existing_index` | Connect to an existing InMemoryVectorStore index. |
| `write_schema` | Write the schema to a yaml file. |
| `delete` | Delete a InMemoryVectorStore entry. |
| `drop_index` | Drop a InMemoryVectorStore search index. |
| `add_texts` | Add more texts to the `VectorStore`. |
| `as_retriever` | Return `VectorStoreRetriever` initialized from this `VectorStore`. |
| `similarity_search_with_score` | Run similarity search with **vector distance**. |
| `similarity_search` | Run similarity search |
| `similarity_search_by_vector` | Run similarity search between a query vector and the indexed vectors. |
| `max_marginal_relevance_search` | Return docs selected using the maximal marginal relevance. |

#### embeddings `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.embeddings "Copy anchor link to this section for reference")

```
embeddings: Embeddings | None
```

Access the query embedding object if available.

#### schema `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.schema "Copy anchor link to this section for reference")

```
schema: dict[str, list[Any]]
```

Return the schema of the index.

#### get\_by\_ids [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.get_by_ids "Copy anchor link to this section for reference")

```
get_by_ids(ids: Sequence[str]) -> list[Document]
```

Get documents by their IDs.

The returned documents are expected to have the ID field set to the ID of the
document in the vector store.

Fewer documents may be returned than requested if some IDs are not found or
if there are duplicated IDs.

Users should not assume that the order of the returned documents matches
the order of the input IDs. Instead, users should rely on the ID field of the
returned documents.

This method should **NOT** raise exceptions if no documents are found for
some IDs.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs to retrieve.  **TYPE:** `Sequence[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects. |

#### aget\_by\_ids `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aget_by_ids "Copy anchor link to this section for reference")

```
aget_by_ids(ids: Sequence[str]) -> list[Document]
```

Async get documents by their IDs.

The returned documents are expected to have the ID field set to the ID of the
document in the vector store.

Fewer documents may be returned than requested if some IDs are not found or
if there are duplicated IDs.

Users should not assume that the order of the returned documents matches
the order of the input IDs. Instead, users should rely on the ID field of the
returned documents.

This method should **NOT** raise exceptions if no documents are found for
some IDs.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs to retrieve.  **TYPE:** `Sequence[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects. |

#### adelete `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.adelete "Copy anchor link to this section for reference")

```
adelete(ids: list[str] | None = None, **kwargs: Any) -> bool | None
```

Async delete by vector ID or other criteria.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs to delete. If `None`, delete all.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Other keyword arguments that subclasses might use.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool | None` | `True` if deletion is successful, `False` otherwise, `None` if not implemented. |

#### aadd\_texts `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aadd_texts "Copy anchor link to this section for reference")

```
aadd_texts(
    texts: Iterable[str],
    metadatas: list[dict] | None = None,
    *,
    ids: list[str] | None = None,
    **kwargs: Any,
) -> list[str]
```

Async run more texts through the embeddings and add to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Iterable of strings to add to the `VectorStore`.  **TYPE:** `Iterable[str]` |
| `metadatas` | Optional list of metadatas associated with the texts.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `ids` | Optional list  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | `VectorStore` specific parameters.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs from adding the texts into the `VectorStore`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the number of metadatas does not match the number of texts. |
| `ValueError` | If the number of IDs does not match the number of texts. |

#### add\_documents [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.add_documents "Copy anchor link to this section for reference")

```
add_documents(documents: list[Document], **kwargs: Any) -> list[str]
```

Add or update documents in the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | Documents to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `**kwargs` | Additional keyword arguments.  If kwargs contains IDs and documents contain ids, the IDs in the kwargs will receive precedence.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs of the added texts. |

#### aadd\_documents `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.aadd_documents "Copy anchor link to this section for reference")

```
aadd_documents(documents: list[Document], **kwargs: Any) -> list[str]
```

Async run more documents through the embeddings and add to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | Documents to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs of the added texts. |

#### search [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.search "Copy anchor link to this section for reference")

```
search(query: str, search_type: str, **kwargs: Any) -> list[Document]
```

Return docs most similar to query using a specified search type.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `search_type` | Type of search to perform.  Can be `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`.  **TYPE:** `str` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If `search_type` is not one of `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`. |

#### asearch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asearch "Copy anchor link to this section for reference")

```
asearch(query: str, search_type: str, **kwargs: Any) -> list[Document]
```

Async return docs most similar to query using a specified search type.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `search_type` | Type of search to perform.  Can be `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`.  **TYPE:** `str` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If `search_type` is not one of `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`. |

#### asimilarity\_search\_with\_score `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_with_score "Copy anchor link to this section for reference")

```
asimilarity_search_with_score(
    *args: Any, **kwargs: Any
) -> list[tuple[Document, float]]
```

Async run similarity search with distance.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*args` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `()` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of tuples of `(doc, similarity_score)`. |

#### similarity\_search\_with\_relevance\_scores [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_with_relevance_scores "Copy anchor link to this section for reference")

```
similarity_search_with_relevance_scores(
    query: str, k: int = 4, **kwargs: Any
) -> list[tuple[Document, float]]
```

Return docs and relevance scores in the range `[0, 1]`.

`0` is dissimilar, `1` is most similar.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Kwargs to be passed to similarity search.  Should include `score_threshold`, an optional floating point value between `0` to `1` to filter the resulting set of retrieved docs.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of tuples of `(doc, similarity_score)`. |

#### asimilarity\_search\_with\_relevance\_scores `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_with_relevance_scores "Copy anchor link to this section for reference")

```
asimilarity_search_with_relevance_scores(
    query: str, k: int = 4, **kwargs: Any
) -> list[tuple[Document, float]]
```

Async return docs and relevance scores in the range `[0, 1]`.

`0` is dissimilar, `1` is most similar.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Kwargs to be passed to similarity search.  Should include `score_threshold`, an optional floating point value between `0` to `1` to filter the resulting set of retrieved docs.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of tuples of `(doc, similarity_score)` |

#### asimilarity\_search `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search "Copy anchor link to this section for reference")

```
asimilarity_search(query: str, k: int = 4, **kwargs: Any) -> list[Document]
```

Async return docs most similar to query.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

#### asimilarity\_search\_by\_vector `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.asimilarity_search_by_vector "Copy anchor link to this section for reference")

```
asimilarity_search_by_vector(
    embedding: list[float], k: int = 4, **kwargs: Any
) -> list[Document]
```

Async return docs most similar to embedding vector.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query vector. |

#### amax\_marginal\_relevance\_search `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.amax_marginal_relevance_search "Copy anchor link to this section for reference")

```
amax_marginal_relevance_search(
    query: str, k: int = 4, fetch_k: int = 20, lambda_mult: float = 0.5, **kwargs: Any
) -> list[Document]
```

Async return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Text to look up documents similar to.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### max\_marginal\_relevance\_search\_by\_vector [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.max_marginal_relevance_search_by_vector "Copy anchor link to this section for reference")

```
max_marginal_relevance_search_by_vector(
    embedding: list[float],
    k: int = 4,
    fetch_k: int = 20,
    lambda_mult: float = 0.5,
    **kwargs: Any,
) -> list[Document]
```

Return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### amax\_marginal\_relevance\_search\_by\_vector `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.amax_marginal_relevance_search_by_vector "Copy anchor link to this section for reference")

```
amax_marginal_relevance_search_by_vector(
    embedding: list[float],
    k: int = 4,
    fetch_k: int = 20,
    lambda_mult: float = 0.5,
    **kwargs: Any,
) -> list[Document]
```

Async return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### from\_documents `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_documents "Copy anchor link to this section for reference")

```
from_documents(documents: list[Document], embedding: Embeddings, **kwargs: Any) -> Self
```

Return `VectorStore` initialized from documents and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | List of `Document` objects to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | `VectorStore` initialized from documents and embeddings. |

#### afrom\_documents `async` `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.afrom_documents "Copy anchor link to this section for reference")

```
afrom_documents(
    documents: list[Document], embedding: Embeddings, **kwargs: Any
) -> Self
```

Async return `VectorStore` initialized from documents and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | List of `Document` objects to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | `VectorStore` initialized from documents and embeddings. |

#### afrom\_texts `async` `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.afrom_texts "Copy anchor link to this section for reference")

```
afrom_texts(
    texts: list[str],
    embedding: Embeddings,
    metadatas: list[dict] | None = None,
    *,
    ids: list[str] | None = None,
    **kwargs: Any,
) -> Self
```

Async return `VectorStore` initialized from texts and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Texts to add to the `VectorStore`.  **TYPE:** `list[str]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `metadatas` | Optional list of metadatas associated with the texts.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `ids` | Optional list of IDs associated with the texts.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | `VectorStore` initialized from texts and embeddings. |

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.__init__ "Copy anchor link to this section for reference")

```
__init__(
    redis_url: str,
    index_name: str,
    embedding: Embeddings,
    index_schema: dict[str, ListOfDict] | str | PathLike | None = None,
    vector_schema: dict[str, str | int] | None = None,
    relevance_score_fn: Callable[[float], float] | None = None,
    key_prefix: str | None = None,
    **kwargs: Any,
)
```

Initialize MemoryDB vector store with necessary components.

#### from\_texts\_return\_keys `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_texts_return_keys "Copy anchor link to this section for reference")

```
from_texts_return_keys(
    texts: list[str],
    embedding: Embeddings,
    metadatas: list[dict] | None = None,
    index_name: str | None = None,
    index_schema: dict[str, ListOfDict] | str | PathLike | None = None,
    vector_schema: dict[str, str | int] | None = None,
    **kwargs: Any,
) -> tuple[InMemoryVectorStore, list[str]]
```

Create a InMemoryVectorStore vectorstore from raw documents.

This is a user-friendly interface that

1. Embeds documents.
2. Creates a new InMemoryVectorStore index if it doesn't already exist
3. Adds the documents to the newly created InMemoryVectorStore index.
4. Returns the keys of the newly created documents once stored.

This method will generate schema based on the metadata passed in
if the `index_schema` is not defined. If the `index_schema` is defined,
it will compare against the generated schema and warn if there are
differences. If you are purposefully defining the schema for the
metadata, then you can ignore that warning.

To examine the schema options, initialize an instance of this class
and print out the schema using the `InMemoryVectorStore.schema`` property. This
will include the content and content\_vector classes which are
always present in the langchain schema.

Example

```
from langchain_aws.vectorstores import InMemoryVectorStore
                embeddings = OpenAIEmbeddings()
redis, keys = InMemoryVectorStore.from_texts_return_keys(
    texts,
    embeddings,
    redis_url="redis://cluster_endpoint:6379"
)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | List of texts to add to the `VectorStore`.  **TYPE:** `list[str]` |
| `embedding` | Embeddings to use for the `VectorStore`.  **TYPE:** `Embeddings` |
| `metadatas` | Optional list of metadata dicts to add to the `VectorStore`.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `index_name` | Optional name of the index to create or add to.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `index_schema` | Optional fields to index within the metadata. Overrides generated schema.  **TYPE:** `dict[str, ListOfDict] | str | PathLike | None`  **DEFAULT:** `None` |
| `vector_schema` | Optional vector schema to use.  **TYPE:** `dict[str, str | int] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the Redis client.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `tuple[InMemoryVectorStore, list[str]]` | Tuple[InMemoryVectorStore, List[str]]: Tuple of the InMemoryVectorStore instance and the keys of the newly created documents. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the number of metadatas does not match the number of texts. |

#### from\_texts `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_texts "Copy anchor link to this section for reference")

```
from_texts(
    texts: list[str],
    embedding: Embeddings,
    metadatas: list[dict] | None = None,
    index_name: str | None = None,
    index_schema: dict[str, ListOfDict] | str | PathLike | None = None,
    vector_schema: dict[str, str | int] | None = None,
    **kwargs: Any,
) -> InMemoryVectorStore
```

Create a InMemoryVectorStore vectorstore from a list of texts.

This is a user-friendly interface that

1. Embeds documents.
2. Creates a new InMemoryVectorStore index if it doesn't already exist
3. Adds the documents to the newly created InMemoryVectorStore index.

This method will generate schema based on the metadata passed in
if the `index_schema` is not defined. If the `index_schema` is defined,
it will compare against the generated schema and warn if there are
differences. If you are purposefully defining the schema for the
metadata, then you can ignore that warning.

To examine the schema options, initialize an instance of this class
and print out the schema using the `InMemoryVectorStore.schema`` property. This
will include the content and content\_vector classes which are
always present in the langchain schema.

Example

```
from langchain_aws.vectorstores import InMemoryVectorStore

embeddings = OpenAIEmbeddings()
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | List of texts to add to the `VectorStore`.  **TYPE:** `list[str]` |
| `embedding` | Embedding model class (i.e. OpenAIEmbeddings) for embedding queries.  **TYPE:** `Embeddings` |
| `metadatas` | Optional list of metadata dicts to add to the `VectorStore`.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `index_name` | Optional name of the index to create or add to.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `index_schema` | Optional fields to index within the metadata. Overrides generated schema.  **TYPE:** `dict[str, ListOfDict] | str | PathLike | None`  **DEFAULT:** `None` |
| `vector_schema` | Optional vector schema to use.  **TYPE:** `dict[str, str | int] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the InMemoryVectorStore client.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `InMemoryVectorStore` | InMemoryVectorStore VectorStore instance.  **TYPE:** `InMemoryVectorStore` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the number of metadatas does not match the number of texts. |
| `ImportError` | If the redis python package is not installed. |

#### from\_existing\_index `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.from_existing_index "Copy anchor link to this section for reference")

```
from_existing_index(
    embedding: Embeddings,
    index_name: str,
    schema: dict[str, ListOfDict] | str | PathLike | dict[str, ListOfDict],
    key_prefix: str | None = None,
    **kwargs: Any,
) -> InMemoryVectorStore
```

Connect to an existing InMemoryVectorStore index.

Example

```
from langchain_aws.vectorstores import InMemoryVectorStore

embeddings = OpenAIEmbeddings()

# must pass in schema and key_prefix from another index
existing_rds = InMemoryVectorStore.from_existing_index(
    embeddings,
    index_name="my-index",
    schema=rds.schema, # schema dumped from another index
    key_prefix=rds.key_prefix, # key prefix from another index
    redis_url="redis://username:password@cluster_endpoint:6379",
)
```

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding model class (i.e. OpenAIEmbeddings) for embedding queries.  **TYPE:** `Embeddings` |
| `index_name` | Name of the index to connect to.  **TYPE:** `str` |
| `schema` | Schema of the index and the vector schema. Can be a dict, or path to yaml file.  **TYPE:** `dict[str, str] | str | PathLike | dict[str, ListOfDict]` |
| `key_prefix` | Prefix to use for all keys in InMemoryVectorStore associated with this index.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the Redis client.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `InMemoryVectorStore` | InMemoryVectorStore VectorStore instance.  **TYPE:** `InMemoryVectorStore` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the index does not exist. |
| `ImportError` | If the redis python package is not installed. |

#### write\_schema [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.write_schema "Copy anchor link to this section for reference")

```
write_schema(path: str | PathLike) -> None
```

Write the schema to a yaml file.

#### delete `staticmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.delete "Copy anchor link to this section for reference")

```
delete(ids: list[str] | None = None, **kwargs: Any) -> bool
```

Delete a InMemoryVectorStore entry.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs (keys in redis) to delete.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments. Supports `redis_url` for Redis connection url (can also be set as an environment variable: REDIS\_URL).  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether or not the deletions were successful.  **TYPE:** `bool` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the redis python package is not installed. |
| `ValueError` | If the IDs (keys in redis) are not provided. |

#### drop\_index `staticmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.drop_index "Copy anchor link to this section for reference")

```
drop_index(index_name: str, delete_documents: bool, **kwargs: Any) -> bool
```

Drop a InMemoryVectorStore search index.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `index_name` | Name of the index to drop.  **TYPE:** `str` |
| `delete_documents` | Whether to drop the associated documents.  **TYPE:** `bool` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | Whether or not the drop was successful.  **TYPE:** `bool` |

#### add\_texts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.add_texts "Copy anchor link to this section for reference")

```
add_texts(
    texts: Iterable[str],
    metadatas: list[dict] | None = None,
    embeddings: list[list[float]] | None = None,
    batch_size: int = 1000,
    clean_metadata: bool = True,
    **kwargs: Any,
) -> list[str]
```

Add more texts to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Iterable of strings/text to add to the `VectorStore`.  **TYPE:** `Iterable[str]` |
| `metadatas` | Optional list of metadatas.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `embeddings` | Optional pre-generated embeddings.  **TYPE:** `list[list[float]] | None`  **DEFAULT:** `None` |
| `batch_size` | Batch size to use for writes.  **TYPE:** `int`  **DEFAULT:** `1000` |
| `**kwargs` | Additional keyword arguments. Supports `keys` or `ids` for identifiers of entries.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs added to the `VectorStore`. |

#### as\_retriever [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.as_retriever "Copy anchor link to this section for reference")

```
as_retriever(**kwargs: Any) -> InMemoryVectorStoreRetriever
```

Return `VectorStoreRetriever` initialized from this `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `**kwargs` | Keyword arguments to pass to the search function.  Can include:   * `search_type`: Defines the type of search that the Retriever should   perform. Can be `'similarity'` (default), `'mmr'`, or   `'similarity_score_threshold'`. * `search_kwargs`: Keyword arguments to pass to the search function.  Can include things like:    + `k`: Amount of documents to return (Default: `4`)   + `score_threshold`: Minimum relevance threshold     for `similarity_score_threshold`   + `fetch_k`: Amount of documents to pass to MMR algorithm     (Default: `20`)   + `lambda_mult`: Diversity of results returned by MMR;     `1` for minimum diversity and 0 for maximum. (Default: `0.5`)   + `filter`: Filter by document metadata  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `VectorStoreRetriever` | Retriever class for `VectorStore`. |

Examples:

```
# Retrieve more documents with higher diversity
# Useful if your dataset has many similar documents
docsearch.as_retriever(
    search_type="mmr", search_kwargs={"k": 6, "lambda_mult": 0.25}
)

# Fetch more documents for the MMR algorithm to consider
# But only return the top 5
docsearch.as_retriever(search_type="mmr", search_kwargs={"k": 5, "fetch_k": 50})

# Only retrieve documents that have a relevance score
# Above a certain threshold
docsearch.as_retriever(
    search_type="similarity_score_threshold",
    search_kwargs={"score_threshold": 0.8},
)

# Only get the single most similar document from the dataset
docsearch.as_retriever(search_kwargs={"k": 1})

# Use a filter to only retrieve documents from a specific paper
docsearch.as_retriever(
    search_kwargs={"filter": {"paper_title": "GPT-4 Technical Report"}}
)
```

#### similarity\_search\_with\_score [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_with_score "Copy anchor link to this section for reference")

```
similarity_search_with_score(
    query: str,
    k: int = 4,
    filter: InMemoryDBFilterExpression | None = None,
    return_metadata: bool = True,
    **kwargs: Any,
) -> list[tuple[Document, float]]
```

Run similarity search with **vector distance**.

The "scores" returned from this function are the raw vector
distances from the query vector. For similarity scores, use
`similarity_search_with_relevance_scores`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | The query text for which to find similar documents.  **TYPE:** `str` |
| `k` | The number of documents to return. Default is 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `filter` | Optional metadata filter.  **TYPE:** `InMemoryDBFilterExpression`  **DEFAULT:** `None` |
| `return_metadata` | Whether to return metadata.  **TYPE:** `bool`  **DEFAULT:** `True` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List[Tuple[Document, float]]: A list of documents that are most similar to the query with the distance for each document. |

#### similarity\_search [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search "Copy anchor link to this section for reference")

```
similarity_search(
    query: str,
    k: int = 4,
    filter: InMemoryDBFilterExpression | None = None,
    return_metadata: bool = True,
    distance_threshold: float | None = None,
    **kwargs: Any,
) -> list[Document]
```

Run similarity search

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | The query text for which to find similar documents.  **TYPE:** `str` |
| `k` | The number of documents to return. Default is 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `filter` | Optional metadata filter.  **TYPE:** `InMemoryDBFilterExpression`  **DEFAULT:** `None` |
| `return_metadata` | Whether to return metadata.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `distance_threshold` | Maximum vector distance between selected documents and the query vector.  **TYPE:** `float | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List[Document]: A list of documents that are most similar to the query text. |

#### similarity\_search\_by\_vector [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.similarity_search_by_vector "Copy anchor link to this section for reference")

```
similarity_search_by_vector(
    embedding: list[float],
    k: int = 4,
    filter: InMemoryDBFilterExpression | None = None,
    return_metadata: bool = True,
    distance_threshold: float | None = None,
    **kwargs: Any,
) -> list[Document]
```

Run similarity search between a query vector and the indexed vectors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | The query vector for which to find similar documents.  **TYPE:** `list[float]` |
| `k` | The number of documents to return. Default is 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `filter` | Optional metadata filter.  **TYPE:** `InMemoryDBFilterExpression`  **DEFAULT:** `None` |
| `return_metadata` | Whether to return metadata.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `distance_threshold` | Maximum vector distance between selected documents and the query vector.  **TYPE:** `float | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List[Document]: A list of documents that are most similar to the query text. |

#### max\_marginal\_relevance\_search [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.InMemoryVectorStore.max_marginal_relevance_search "Copy anchor link to this section for reference")

```
max_marginal_relevance_search(
    query: str,
    k: int = 4,
    fetch_k: int = 20,
    lambda_mult: float = 0.5,
    filter: InMemoryDBFilterExpression | None = None,
    return_metadata: bool = True,
    distance_threshold: float | None = None,
    **kwargs: Any,
) -> list[Document]
```

Return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Text to look up documents similar to.  **TYPE:** `str` |
| `k` | Number of Documents to return. Defaults to 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with 0 corresponding to maximum diversity and `1` to minimum diversity. Defaults to 0.5.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `filter` | Optional metadata filter.  **TYPE:** `InMemoryDBFilterExpression`  **DEFAULT:** `None` |
| `return_metadata` | Whether to return metadata.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `distance_threshold` | Maximum vector distance between selected documents and the query vector.  **TYPE:** `float | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List[Document]: A list of Documents selected by maximal marginal relevance. |

### AmazonS3Vectors [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors "Copy anchor link to this section for reference")

Bases: `VectorStore`

S3Vectors is Amazon S3 Vectors database.

To use, you MUST first manually create a S3 vector bucket.
There is no need to create a vector index.
See: <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-getting-started.html>

Pay attention to s3 vectors limitations and restrictions.
By default, metadata for s3 vectors includes page\_content and metadata
for the Document.
See: <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html>

Examples:

The following examples show various ways to use the AmazonS3Vectors with
LangChain.

For all the following examples assume we have the following:

```
```python
from langchain_aws.embeddings import BedrockEmbeddings
from langchain_aws.vectorstores.s3_vectors import AmazonS3Vectors

embedding = BedrockEmbeddings()
```
```

Initialize, create vector index if it does not exist, and add texts:

```
```python
vector_store = AmazonS3Vectors.from_texts(
    ["hello", "developer", "wife"],
    vector_bucket_name="<vector bucket name>",
    index_name="<vector index name>",
    embedding=embedding,
)
```
```

Initialize, create vector index if it does not exist, and add Documents:

```
from langchain_core.documents import Document

vector_store = AmazonS3Vectors(
    vector_bucket_name="<vector bucket name>",
    index_name="<vector index name>",
    embedding=embedding,
)
vector_store.add_documents(
    [
        Document("Star Wars", id="key1", metadata={"genre": "scifi"}),
        Document("Jurassic Park", id="key2", metadata={"genre": "scifi"}),
        Document("Finding Nemo", id="key3", metadata={"genre": "family"}),
    ]
)
```

Search with score(distance) and metadata filter:

```
vector_store.similarity_search_with_score(
    "adventures in space", filter={"genre": {"$eq": "family"}}
)
```

| METHOD | DESCRIPTION |
| --- | --- |
| `aget_by_ids` | Async get documents by their IDs. |
| `adelete` | Async delete by vector ID or other criteria. |
| `aadd_texts` | Async run more texts through the embeddings and add to the `VectorStore`. |
| `add_documents` | Add or update documents in the `VectorStore`. |
| `aadd_documents` | Async run more documents through the embeddings and add to the `VectorStore`. |
| `search` | Return docs most similar to query using a specified search type. |
| `asearch` | Async return docs most similar to query using a specified search type. |
| `asimilarity_search_with_score` | Async run similarity search with distance. |
| `similarity_search_with_relevance_scores` | Return docs and relevance scores in the range `[0, 1]`. |
| `asimilarity_search_with_relevance_scores` | Async return docs and relevance scores in the range `[0, 1]`. |
| `asimilarity_search` | Async return docs most similar to query. |
| `asimilarity_search_by_vector` | Async return docs most similar to embedding vector. |
| `max_marginal_relevance_search` | Return docs selected using the maximal marginal relevance. |
| `amax_marginal_relevance_search` | Async return docs selected using the maximal marginal relevance. |
| `max_marginal_relevance_search_by_vector` | Return docs selected using the maximal marginal relevance. |
| `amax_marginal_relevance_search_by_vector` | Async return docs selected using the maximal marginal relevance. |
| `from_documents` | Return `VectorStore` initialized from documents and embeddings. |
| `afrom_documents` | Async return `VectorStore` initialized from documents and embeddings. |
| `afrom_texts` | Async return `VectorStore` initialized from texts and embeddings. |
| `__init__` | Create a AmazonS3Vectors. |
| `add_texts` | Add more texts to the `VectorStore`. |
| `delete` | Delete by vector ID or delete index. |
| `get_by_ids` | Get documents by their IDs. |
| `similarity_search` | Return docs most similar to query. |
| `similarity_search_with_score` | Run similarity search with score(distance). |
| `similarity_search_by_vector` | Return docs most similar to embedding vector. |
| `as_retriever` | Return AmazonS3VectorsRetriever initialized from this AmazonS3Vectors. |
| `from_texts` | Return AmazonS3Vectors initialized from texts and embeddings. |

#### embeddings `property` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.embeddings "Copy anchor link to this section for reference")

```
embeddings: Embeddings | None
```

Access the query embedding object if available.

#### aget\_by\_ids `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aget_by_ids "Copy anchor link to this section for reference")

```
aget_by_ids(ids: Sequence[str]) -> list[Document]
```

Async get documents by their IDs.

The returned documents are expected to have the ID field set to the ID of the
document in the vector store.

Fewer documents may be returned than requested if some IDs are not found or
if there are duplicated IDs.

Users should not assume that the order of the returned documents matches
the order of the input IDs. Instead, users should rely on the ID field of the
returned documents.

This method should **NOT** raise exceptions if no documents are found for
some IDs.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs to retrieve.  **TYPE:** `Sequence[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects. |

#### adelete `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.adelete "Copy anchor link to this section for reference")

```
adelete(ids: list[str] | None = None, **kwargs: Any) -> bool | None
```

Async delete by vector ID or other criteria.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs to delete. If `None`, delete all.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Other keyword arguments that subclasses might use.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool | None` | `True` if deletion is successful, `False` otherwise, `None` if not implemented. |

#### aadd\_texts `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aadd_texts "Copy anchor link to this section for reference")

```
aadd_texts(
    texts: Iterable[str],
    metadatas: list[dict] | None = None,
    *,
    ids: list[str] | None = None,
    **kwargs: Any,
) -> list[str]
```

Async run more texts through the embeddings and add to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Iterable of strings to add to the `VectorStore`.  **TYPE:** `Iterable[str]` |
| `metadatas` | Optional list of metadatas associated with the texts.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `ids` | Optional list  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | `VectorStore` specific parameters.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs from adding the texts into the `VectorStore`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the number of metadatas does not match the number of texts. |
| `ValueError` | If the number of IDs does not match the number of texts. |

#### add\_documents [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.add_documents "Copy anchor link to this section for reference")

```
add_documents(documents: list[Document], **kwargs: Any) -> list[str]
```

Add or update documents in the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | Documents to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `**kwargs` | Additional keyword arguments.  If kwargs contains IDs and documents contain ids, the IDs in the kwargs will receive precedence.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs of the added texts. |

#### aadd\_documents `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.aadd_documents "Copy anchor link to this section for reference")

```
aadd_documents(documents: list[Document], **kwargs: Any) -> list[str]
```

Async run more documents through the embeddings and add to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | Documents to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs of the added texts. |

#### search [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.search "Copy anchor link to this section for reference")

```
search(query: str, search_type: str, **kwargs: Any) -> list[Document]
```

Return docs most similar to query using a specified search type.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `search_type` | Type of search to perform.  Can be `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`.  **TYPE:** `str` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If `search_type` is not one of `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`. |

#### asearch `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asearch "Copy anchor link to this section for reference")

```
asearch(query: str, search_type: str, **kwargs: Any) -> list[Document]
```

Async return docs most similar to query using a specified search type.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `search_type` | Type of search to perform.  Can be `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`.  **TYPE:** `str` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If `search_type` is not one of `'similarity'`, `'mmr'`, or `'similarity_score_threshold'`. |

#### asimilarity\_search\_with\_score `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_with_score "Copy anchor link to this section for reference")

```
asimilarity_search_with_score(
    *args: Any, **kwargs: Any
) -> list[tuple[Document, float]]
```

Async run similarity search with distance.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*args` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `()` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of tuples of `(doc, similarity_score)`. |

#### similarity\_search\_with\_relevance\_scores [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_with_relevance_scores "Copy anchor link to this section for reference")

```
similarity_search_with_relevance_scores(
    query: str, k: int = 4, **kwargs: Any
) -> list[tuple[Document, float]]
```

Return docs and relevance scores in the range `[0, 1]`.

`0` is dissimilar, `1` is most similar.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Kwargs to be passed to similarity search.  Should include `score_threshold`, an optional floating point value between `0` to `1` to filter the resulting set of retrieved docs.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of tuples of `(doc, similarity_score)`. |

#### asimilarity\_search\_with\_relevance\_scores `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_with_relevance_scores "Copy anchor link to this section for reference")

```
asimilarity_search_with_relevance_scores(
    query: str, k: int = 4, **kwargs: Any
) -> list[tuple[Document, float]]
```

Async return docs and relevance scores in the range `[0, 1]`.

`0` is dissimilar, `1` is most similar.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Kwargs to be passed to similarity search.  Should include `score_threshold`, an optional floating point value between `0` to `1` to filter the resulting set of retrieved docs.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of tuples of `(doc, similarity_score)` |

#### asimilarity\_search `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search "Copy anchor link to this section for reference")

```
asimilarity_search(query: str, k: int = 4, **kwargs: Any) -> list[Document]
```

Async return docs most similar to query.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

#### asimilarity\_search\_by\_vector `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.asimilarity_search_by_vector "Copy anchor link to this section for reference")

```
asimilarity_search_by_vector(
    embedding: list[float], k: int = 4, **kwargs: Any
) -> list[Document]
```

Async return docs most similar to embedding vector.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query vector. |

#### max\_marginal\_relevance\_search [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.max_marginal_relevance_search "Copy anchor link to this section for reference")

```
max_marginal_relevance_search(
    query: str, k: int = 4, fetch_k: int = 20, lambda_mult: float = 0.5, **kwargs: Any
) -> list[Document]
```

Return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Text to look up documents similar to.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### amax\_marginal\_relevance\_search `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.amax_marginal_relevance_search "Copy anchor link to this section for reference")

```
amax_marginal_relevance_search(
    query: str, k: int = 4, fetch_k: int = 20, lambda_mult: float = 0.5, **kwargs: Any
) -> list[Document]
```

Async return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Text to look up documents similar to.  **TYPE:** `str` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### max\_marginal\_relevance\_search\_by\_vector [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.max_marginal_relevance_search_by_vector "Copy anchor link to this section for reference")

```
max_marginal_relevance_search_by_vector(
    embedding: list[float],
    k: int = 4,
    fetch_k: int = 20,
    lambda_mult: float = 0.5,
    **kwargs: Any,
) -> list[Document]
```

Return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### amax\_marginal\_relevance\_search\_by\_vector `async` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.amax_marginal_relevance_search_by_vector "Copy anchor link to this section for reference")

```
amax_marginal_relevance_search_by_vector(
    embedding: list[float],
    k: int = 4,
    fetch_k: int = 20,
    lambda_mult: float = 0.5,
    **kwargs: Any,
) -> list[Document]
```

Async return docs selected using the maximal marginal relevance.

Maximal marginal relevance optimizes for similarity to query AND diversity
among selected documents.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of `Document` objects to return.  **TYPE:** `int`  **DEFAULT:** `4` |
| `fetch_k` | Number of `Document` objects to fetch to pass to MMR algorithm.  **TYPE:** `int`  **DEFAULT:** `20` |
| `lambda_mult` | Number between `0` and `1` that determines the degree of diversity among the results with `0` corresponding to maximum diversity and `1` to minimum diversity.  **TYPE:** `float`  **DEFAULT:** `0.5` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects selected by maximal marginal relevance. |

#### from\_documents `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.from_documents "Copy anchor link to this section for reference")

```
from_documents(documents: list[Document], embedding: Embeddings, **kwargs: Any) -> Self
```

Return `VectorStore` initialized from documents and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | List of `Document` objects to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | `VectorStore` initialized from documents and embeddings. |

#### afrom\_documents `async` `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.afrom_documents "Copy anchor link to this section for reference")

```
afrom_documents(
    documents: list[Document], embedding: Embeddings, **kwargs: Any
) -> Self
```

Async return `VectorStore` initialized from documents and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | List of `Document` objects to add to the `VectorStore`.  **TYPE:** `list[Document]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | `VectorStore` initialized from documents and embeddings. |

#### afrom\_texts `async` `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.afrom_texts "Copy anchor link to this section for reference")

```
afrom_texts(
    texts: list[str],
    embedding: Embeddings,
    metadatas: list[dict] | None = None,
    *,
    ids: list[str] | None = None,
    **kwargs: Any,
) -> Self
```

Async return `VectorStore` initialized from texts and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Texts to add to the `VectorStore`.  **TYPE:** `list[str]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `metadatas` | Optional list of metadatas associated with the texts.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `ids` | Optional list of IDs associated with the texts.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | `VectorStore` initialized from texts and embeddings. |

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.__init__ "Copy anchor link to this section for reference")

```
__init__(
    *,
    vector_bucket_name: str,
    index_name: str,
    data_type: Literal["float32"] = "float32",
    distance_metric: Literal["euclidean", "cosine"] = "cosine",
    non_filterable_metadata_keys: list[str] | None = None,
    page_content_metadata_key: str | None = "_page_content",
    create_index_if_not_exist: bool = True,
    relevance_score_fn: Callable[[float], float] | None = None,
    embedding: Embeddings | None = None,
    region_name: str | None = None,
    credentials_profile_name: str | None = None,
    aws_access_key_id: str | None = None,
    aws_secret_access_key: str | None = None,
    aws_session_token: str | None = None,
    endpoint_url: str | None = None,
    config: Any = None,
    client: Any = None,
    **kwargs: Any,
)
```

Create a AmazonS3Vectors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `vector_bucket_name` | The name of an existing S3 vector bucket  **TYPE:** `str` |
| `index_name` | The name of the S3 vector index. The index names must be 3 to 63 characters long, start and end with a letter or number, and contain only lowercase letters, numbers, hyphens and dots.  **TYPE:** `str` |
| `data_type` | The data type of the vectors to be inserted into the vector index. Default is "float32".  **TYPE:** `Literal['float32']`  **DEFAULT:** `'float32'` |
| `distance_metric` | The distance metric to be used for similarity search. Default is "cosine".  **TYPE:** `Literal['euclidean', 'cosine']`  **DEFAULT:** `'cosine'` |
| `non_filterable_metadata_keys` | Non-filterable metadata keys  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `page_content_metadata_key` | Key of metadata to store page\_content in Document. If None, embedding page\_content but stored as an empty string. Default is `_page_content`.  **TYPE:** `str | None`  **DEFAULT:** `'_page_content'` |
| `create_index_if_not_exist` | Automatically create vector index if it does not exist. Default is True.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `relevance_score_fn` | The 'correct' relevance function.  **TYPE:** `Callable[[float], float] | None`  **DEFAULT:** `None` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings | None`  **DEFAULT:** `None` |
| `region_name` | The aws region where the Sagemaker model is deployed, eg. `us-west-2`.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `credentials_profile_name` | The name of the profile in the ~/.aws/credentials or ~/.aws/config files, which has either access keys or role information specified. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `aws_access_key_id` | AWS access key id. If provided, aws\_secret\_access\_key must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `aws_secret_access_key` | AWS secret\_access\_key. If provided, aws\_access\_key\_id must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `aws_session_token` | AWS session token. If provided, aws\_access\_key\_id and aws\_secret\_access\_key must also be provided. Not required unless using temporary credentials. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `endpoint_url` | Needed if you don't want to default to us-east-1 endpoint  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `config` | An optional `botocore.config.Config` instance to pass to the client.  **TYPE:** `Any`  **DEFAULT:** `None` |
| `client` | Boto3 client for s3vectors  **TYPE:** `Any`  **DEFAULT:** `None` |
| `kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

#### add\_texts [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.add_texts "Copy anchor link to this section for reference")

```
add_texts(
    texts: Iterable[str],
    metadatas: list[dict] | None = None,
    *,
    ids: list[str] | None = None,
    batch_size: int = 200,
    **kwargs: Any,
) -> list[str]
```

Add more texts to the `VectorStore`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Iterable of strings/text to add to the `VectorStore`.  **TYPE:** `Iterable[str]` |
| `metadatas` | Optional list of metadatas.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `ids` | Optional list of IDs associated with the texts.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `batch_size` | Batch size for `put_vectors`.  **TYPE:** `int`  **DEFAULT:** `200` |
| `kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[str]` | List of IDs added to the `VectorStore`. |

#### delete [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.delete "Copy anchor link to this section for reference")

```
delete(
    ids: list[str] | None = None, *, batch_size: int = 500, **kwargs: Any
) -> bool | None
```

Delete by vector ID or delete index.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of IDs to delete vectors. If `None`, delete index with all vectors.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `batch_size` | Batch size for `delete_vectors`.  **TYPE:** `int`  **DEFAULT:** `500` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool | None` | Always `True`. |

#### get\_by\_ids [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.get_by_ids "Copy anchor link to this section for reference")

```
get_by_ids(ids: Sequence[str], /, *, batch_size: int = 100) -> list[Document]
```

Get documents by their IDs.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ids` | List of id.  **TYPE:** `Sequence[str]` |
| `batch_size` | Batch size for get\_vectors.  **TYPE:** `int`  **DEFAULT:** `100` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects. |

#### similarity\_search [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search "Copy anchor link to this section for reference")

```
similarity_search(
    query: str, k: int = 4, *, filter: dict | None = None, **kwargs: Any
) -> list[Document]
```

Return docs most similar to query.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of Documents to return. Defaults to 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `filter` | Metadata filter to apply during the query. See: <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html>  **TYPE:** `dict | None`  **DEFAULT:** `None` |
| `**kwargs` | Arguments to pass to the search method.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query. |

#### similarity\_search\_with\_score [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_with_score "Copy anchor link to this section for reference")

```
similarity_search_with_score(
    query: str, k: int = 4, *, filter: dict | None = None, **kwargs: Any
) -> list[tuple[Document, float]]
```

Run similarity search with score(distance).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `query` | Input text.  **TYPE:** `str` |
| `k` | Number of Documents to return. Defaults to 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `filter` | Metadata filter to apply during the query. See: <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html>  **TYPE:** `dict | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[Document, float]]` | List of Tuples of (doc, distance). |

#### similarity\_search\_by\_vector [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.similarity_search_by_vector "Copy anchor link to this section for reference")

```
similarity_search_by_vector(
    embedding: list[float], k: int = 4, *, filter: dict | None = None, **kwargs: Any
) -> list[Document]
```

Return docs most similar to embedding vector.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embedding` | Embedding to look up documents similar to.  **TYPE:** `list[float]` |
| `k` | Number of Documents to return. Defaults to 4.  **TYPE:** `int`  **DEFAULT:** `4` |
| `filter` | Metadata filter to apply during the query. See: <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html>  **TYPE:** `dict | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Document]` | List of `Document` objects most similar to the query vector. |

#### as\_retriever [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.as_retriever "Copy anchor link to this section for reference")

```
as_retriever(**kwargs: Any) -> AmazonS3VectorsRetriever
```

Return AmazonS3VectorsRetriever initialized from this AmazonS3Vectors.

#### from\_texts `classmethod` [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.AmazonS3Vectors.from_texts "Copy anchor link to this section for reference")

```
from_texts(
    texts: list[str],
    embedding: Embeddings,
    metadatas: list[dict] | None = None,
    *,
    ids: list[str] | None = None,
    vector_bucket_name: str,
    index_name: str,
    data_type: Literal["float32"] = "float32",
    distance_metric: Literal["euclidean", "cosine"] = "cosine",
    non_filterable_metadata_keys: list[str] | None = None,
    page_content_metadata_key: str | None = "_page_content",
    create_index_if_not_exist: bool = True,
    relevance_score_fn: Callable[[float], float] | None = None,
    region_name: str | None = None,
    credentials_profile_name: str | None = None,
    aws_access_key_id: str | None = None,
    aws_secret_access_key: str | None = None,
    aws_session_token: str | None = None,
    endpoint_url: str | None = None,
    config: Any = None,
    client: Any = None,
    **kwargs: Any,
) -> AmazonS3Vectors
```

Return AmazonS3Vectors initialized from texts and embeddings.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | Texts to add to the `VectorStore`.  **TYPE:** `list[str]` |
| `embedding` | Embedding function to use.  **TYPE:** `Embeddings` |
| `metadatas` | Optional list of metadatas associated with the texts. Default is None.  **TYPE:** `list[dict] | None`  **DEFAULT:** `None` |
| `ids` | Optional list of IDs associated with the texts.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `vector_bucket_name` | The name of an existing S3 vector bucket  **TYPE:** `str` |
| `index_name` | The name of the S3 vector index. The index names must be 3 to 63 characters long, start and end with a letter or number, and contain only lowercase letters, numbers, hyphens and dots.  **TYPE:** `str` |
| `data_type` | The data type of the vectors to be inserted into the vector index. Default is "float32".  **TYPE:** `Literal['float32']`  **DEFAULT:** `'float32'` |
| `distance_metric` | The distance metric to be used for similarity search. Default is "cosine".  **TYPE:** `Literal['euclidean', 'cosine']`  **DEFAULT:** `'cosine'` |
| `non_filterable_metadata_keys` | Non-filterable metadata keys  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `page_content_metadata_key` | Key of metadata to store page\_content in Document. If None, embedding page\_content but stored as an empty string. Default is "\_page\_content".  **TYPE:** `str | None`  **DEFAULT:** `'_page_content'` |
| `create_index_if_not_exist` | Automatically create vector index if it does not exist. Default is True.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `relevance_score_fn` | The 'correct' relevance function.  **TYPE:** `Callable[[float], float] | None`  **DEFAULT:** `None` |
| `region_name` | The aws region where the Sagemaker model is deployed, eg. `us-west-2`.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `credentials_profile_name` | The name of the profile in the ~/.aws/credentials or ~/.aws/config files, which has either access keys or role information specified. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `aws_access_key_id` | AWS access key id. If provided, aws\_secret\_access\_key must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_ACCESS_KEY_ID` environment variable.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `aws_secret_access_key` | AWS secret\_access\_key. If provided, aws\_access\_key\_id must also be provided. If not specified, the default credential profile or, if on an EC2 instance, credentials from IMDS will be used. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_SECRET_ACCESS_KEY` environment variable.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `aws_session_token` | AWS session token. If provided, aws\_access\_key\_id and aws\_secret\_access\_key must also be provided. Not required unless using temporary credentials. See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html> If not provided, will be read from `AWS_SESSION_TOKEN` environment variable.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `endpoint_url` | Needed if you don't want to default to us-east-1 endpoint  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `config` | An optional `botocore.config.Config` instance to pass to the client.  **TYPE:** `Any`  **DEFAULT:** `None` |
| `client` | Boto3 client for s3vectors  **TYPE:** `Any`  **DEFAULT:** `None` |
| `kwargs` | Arguments to pass to AmazonS3Vectors.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AmazonS3Vectors` | AmazonS3Vectors initialized from texts and embeddings. |

### create\_neptune\_opencypher\_qa\_chain [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.create_neptune_opencypher_qa_chain "Copy anchor link to this section for reference")

```
create_neptune_opencypher_qa_chain(
    llm: BaseLanguageModel,
    graph: BaseNeptuneGraph,
    qa_prompt: BasePromptTemplate = CYPHER_QA_PROMPT,
    cypher_prompt: BasePromptTemplate | None = None,
    return_intermediate_steps: bool = False,
    return_direct: bool = False,
    extra_instructions: str | None = None,
    allow_dangerous_requests: bool = False,
) -> Runnable
```

Chain for question-answering against a Neptune graph
by generating openCypher statements.

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only include necessary permissions.
Failure to do so may result in data corruption or loss, since the calling
code may attempt commands that would result in deletion, mutation
of data if appropriately prompted or reading sensitive data if such
data is present in the database.
The best way to guard against such negative outcomes is to (as appropriate)
limit the permissions granted to the credentials used with this tool.

```
See https://docs.langchain.com/oss/python/security-policy for more information.
```

Example

```
chain = create_neptune_opencypher_qa_chain(
    llm=llm,
    graph=graph
)
response = chain.invoke({"query": "your_query_here"})
```

### create\_neptune\_sparql\_qa\_chain [¶](https://reference.langchain.com/python/integrations/langchain_aws/#langchain_aws.create_neptune_sparql_qa_chain "Copy anchor link to this section for reference")

```
create_neptune_sparql_qa_chain(
    llm: BaseLanguageModel,
    graph: NeptuneRdfGraph,
    qa_prompt: BasePromptTemplate = SPARQL_QA_PROMPT,
    sparql_prompt: BasePromptTemplate | None = None,
    return_intermediate_steps: bool = False,
    return_direct: bool = False,
    extra_instructions: str | None = None,
    allow_dangerous_requests: bool = False,
    examples: str | None = None,
) -> Runnable[Any, dict]
```

Chain for question-answering against a Neptune graph
by generating SPARQL statements.

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only include necessary permissions.
Failure to do so may result in data corruption or loss, since the calling
code may attempt commands that would result in deletion, mutation
of data if appropriately prompted or reading sensitive data if such
data is present in the database.
The best way to guard against such negative outcomes is to (as appropriate)
limit the permissions granted to the credentials used with this tool.

```
See https://docs.langchain.com/oss/python/security-policy for more information.
```

Example

```
chain = create_neptune_sparql_qa_chain(
    llm=llm,
    graph=graph
)
response = chain.invoke({"query": "your_query_here"})
```

Back to top