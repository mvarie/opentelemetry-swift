// Copyright 2020, OpenTelemetry Authors
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

import Foundation

public struct Metric {
    public private(set) var namespace: String
    public private(set) var resource: Resource
    public private(set) var instrumentationLibraryInfo : InstrumentationLibraryInfo
    public private(set) var name: String
    public private(set) var description: String
    public private(set) var aggregationType: AggregationType
    public internal(set) var data = [MetricData]()

    init(namespace: String, name: String, desc: String, type: AggregationType, resource: Resource, instrumentationLibraryInfo: InstrumentationLibraryInfo) {
        self.namespace = namespace
        self.instrumentationLibraryInfo = instrumentationLibraryInfo
        self.name = name
        description = desc
        aggregationType = type
        self.resource = resource
    }
}
