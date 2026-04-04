# Spec Mode

> **规范先行，代码在后。**

![OpenCode Compatible](https://img.shields.io/badge/OpenCode-Compatible-blue)
![License](https://img.shields.io/badge/license-Apache--2.0-green)
![Version](https://img.shields.io/badge/version-1.0.0-orange)

**为 AI 助手打造的专业级规范优先开发工作流。**

灵感源自 Trae 的 spec-mode-skill，将企业级规范实践引入你的 AI 编码工作流。

**兼容平台：** OpenCode、Cursor、Windsurf、Copilot

---

## 📖 概述

Spec Mode 在开始任何复杂开发任务之前，会创建三个标准化文档：

- **spec.md** - 做什么 & 为什么（需求、范围、影响分析）
- **tasks.md** - 如何做（拆分为可验证的工作项）
- **checklist.md** - 验证检查点（验收标准）

---

## ❓ 为什么需要 Spec Mode？

| 问题 | Spec Mode 解决方案 |
|------|------------------|
| ❌ AI 不理解需求就直接写代码 | ✅ 先创建详细的 spec.md |
| ❌ 需求模糊导致返工 | ✅ checklist.md 明确验收标准 |
| ❌ 大任务难以追踪进度 | ✅ tasks.md 任务分解 |
| ❌ 没有文档难以交接 | ✅ 专业化规范文档 |
| ❌ 开发过程中范围蔓延 | ✅ 编码前定义清晰范围 |

---

## 📦 安装方式

### 方式 1：通过 npm 安装

```bash
npx skills add spec-mode --skill spec-mode
```

### 方式 2：通过 GitHub 安装

```bash
npx skills add GlacierXiaowei/spec-mode --skill spec-mode
```

### 方式 3：手动安装

1. Clone 或下载本仓库
2. 将 skill 文件夹复制到你的 AI 助手的 skills 目录
3. 重启 AI 助手

---

## 💡 使用方法

说出以下任意触发词即可启动 Spec Mode：

- `"spec"`
- `"specification"`
- `"spec-mode"`
- `"写规范"`
- `"写 specs"`

### 使用示例

```
用户：我要做一个用户登录系统，使用 spec-mode
```

---

## 🎯 何时使用

### ✅ 适合使用：

- 大型功能（登录系统、订单流程、消息中心）
- 涉及多个文件/模块的改动
- 需求模糊（"优化体验"、"重构首页"）
- 需要明确的验收标准
- 团队协作或工作交接
- 高风险改动（兼容性、权限、支付、数据迁移）

### ❌ 不需要使用：

- 小型修复（文案、间距、简单 bug）
- 需求明确（"把按钮文字从 A 改成 B"）
- 一次性探索任务
- 纯解释说明任务

**经验法则：** 小型/明确/低风险 → 可选 spec。大型/模糊/高风险 → 必须使用 spec。

---

## 📁 输出结构

```
<项目根目录>/.specs/<变更 ID>/
├── spec.md        # 需求和范围
├── tasks.md       # 实现任务
└── checklist.md   # 验证检查点
```

### 文档内容

#### spec.md

- Why（业务目标）
- What（变更概述）
- 影响分析
- ADDED（新增）/ MODIFIED（修改）/ REMOVED（删除）章节

#### tasks.md

- 小型可验证的工作项
- 任务之间的依赖关系
- 预估工作量

#### checklist.md

- 必须通过的检查点
- 条目化、可检查的标准
- 验收测试用例

---

## ⚙️ 核心规则

### 铁律

> **规范先行，代码在后。绝不跳过规范阶段。**

### Spec Mode 禁止的行为

- ❌ 规范批准前写代码
- ❌ 跳过用户评审
- ❌ "只改一点点"代码
- ❌ 规范前扫描代码（应在规范后扫描以实现）

---

## 📄 许可证

Apache-2.0

## 👤 作者

**Glacier Xiaowei**
- GitHub: [@GlacierXiaowei](https://github.com/GlacierXiaowei)
- Email: glacier_xiaowei@163.com

## 🤝 贡献

欢迎贡献！请随时提交 Pull Request。

---

## 📚 相关资源

- [English README](README.md)
- [GitHub 仓库](https://github.com/GlacierXiaowei/spec-mode)
- [npm 包](https://www.npmjs.com/package/spec-mode)
