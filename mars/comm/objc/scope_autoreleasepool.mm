// Tencent is pleased to support the open source community by making Mars available.
// Copyright (C) 2016 THL A29 Limited, a Tencent company. All rights reserved.

// Licensed under the MIT License (the "License"); you may not use this file except in
// compliance with the License. You may obtain a copy of the License at
// http://opensource.org/licenses/MIT

// Unless required by applicable law or agreed to in writing, software distributed under the License
// is distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
// or implied. See the License for the specific language governing permissions and limitations under
// the License.
//
//  scope_autoreleasepool.cpp
//  MicroMessenger
//
//  Created by yerungui on 12-11-30.
//

#include "comm/objc/scope_autoreleasepool.h"
#import <Foundation/Foundation.h>

Scope_AutoReleasePool::Scope_AutoReleasePool() : m_pool([[NSAutoreleasePool alloc] init]) {}

Scope_AutoReleasePool::~Scope_AutoReleasePool() { [m_pool drain]; }

void comm_export_symbols_3() {}
