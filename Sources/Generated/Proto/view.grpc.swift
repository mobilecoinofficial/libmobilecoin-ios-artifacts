//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: view.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `FogView_FogViewAPIClient`, then call methods of this protocol to make API calls.
public protocol FogView_FogViewAPIClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: FogView_FogViewAPIClientInterceptorFactoryProtocol? { get }

  func auth(
    _ request: Attest_AuthMessage,
    callOptions: CallOptions?
  ) -> UnaryCall<Attest_AuthMessage, Attest_AuthMessage>

  func query(
    _ request: Attest_Message,
    callOptions: CallOptions?
  ) -> UnaryCall<Attest_Message, Attest_Message>
}

extension FogView_FogViewAPIClientProtocol {
  public var serviceName: String {
    return "fog_view.FogViewAPI"
  }

  //// This is called to perform IX key exchange with the enclave before calling GetOutputs.
  ///
  /// - Parameters:
  ///   - request: Request to send to Auth.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func auth(
    _ request: Attest_AuthMessage,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Attest_AuthMessage, Attest_AuthMessage> {
    return self.makeUnaryCall(
      path: "/fog_view.FogViewAPI/Auth",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAuthInterceptors() ?? []
    )
  }

  //// Input should be an encrypted QueryRequest, result is an encrypted QueryResponse
  ///
  /// - Parameters:
  ///   - request: Request to send to Query.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func query(
    _ request: Attest_Message,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Attest_Message, Attest_Message> {
    return self.makeUnaryCall(
      path: "/fog_view.FogViewAPI/Query",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeQueryInterceptors() ?? []
    )
  }
}

public protocol FogView_FogViewAPIClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'auth'.
  func makeAuthInterceptors() -> [ClientInterceptor<Attest_AuthMessage, Attest_AuthMessage>]

  /// - Returns: Interceptors to use when invoking 'query'.
  func makeQueryInterceptors() -> [ClientInterceptor<Attest_Message, Attest_Message>]
}

public final class FogView_FogViewAPIClient: FogView_FogViewAPIClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: FogView_FogViewAPIClientInterceptorFactoryProtocol?

  /// Creates a client for the fog_view.FogViewAPI service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: FogView_FogViewAPIClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

