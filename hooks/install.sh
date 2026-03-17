#!/bin/bash
# Instala os hooks do blog no repositório atual
# Execute este script dentro do repositório monitorado (ex: Sistema-Contratos-Frontend)
#
# Uso:
#   cd /caminho/para/seu-repo
#   bash /caminho/para/blog-eucomittei/hooks/install.sh

HOOKS_DIR="$(git rev-parse --git-dir)/hooks"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -d "$HOOKS_DIR" ]; then
    echo "❌ Erro: não foi possível encontrar o diretório de hooks. Execute dentro de um repositório git."
    exit 1
fi

cp "$SCRIPT_DIR/commit-msg" "$HOOKS_DIR/commit-msg"
cp "$SCRIPT_DIR/post-commit" "$HOOKS_DIR/post-commit"
chmod +x "$HOOKS_DIR/commit-msg"
chmod +x "$HOOKS_DIR/post-commit"

# Configura push automático de tags
git config push.followTags true

echo ""
echo "✅ Hooks instalados com sucesso!"
echo ""
echo "Como usar:"
echo "  git commit -m \"feat: minha feature --post\"  → commit limpo no GitHub + tag criada"
echo "  git push                                       → envia commit + tag automaticamente"
echo ""
echo "O blog vai detectar a tag e gerar o post automaticamente."
