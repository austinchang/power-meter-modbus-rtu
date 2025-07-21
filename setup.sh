#!/bin/bash
echo "🚀 將現有的POWER METER MODBUS改成RTU MODE - 環境設置"
echo "================================================"

echo "📦 檢查 Python 版本..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 未安裝，請先安裝 Python 3.8+"
    exit 1
fi
python3 --version

echo "🔧 創建虛擬環境..."
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "✅ 虛擬環境創建完成"
else
    echo "✅ 虛擬環境已存在"
fi

echo "🔌 啟動虛擬環境..."
source venv/bin/activate

echo "📥 安裝依賴套件..."
pip install --upgrade pip
pip install -r requirements.txt

echo "🧪 驗證安裝..."
python -c "import sys; print(f'Python {sys.version}')"
python -c "print('✅ 環境設置完成！')"

echo "🎉 設置完成！現在可以開始開發了"
echo "💡 使用方式:"
echo "   1. 啟動環境: source venv/bin/activate"
echo "   2. 執行主程式: python src/main.py"
echo "   3. 執行測試: pytest tests/"
echo "   4. 退出環境: deactivate"