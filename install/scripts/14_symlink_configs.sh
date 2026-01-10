BASE="$HOME/Documents/Native Instruments"
SRC="$HOME/install/configs/traktor/Settings.tsi"

TRAKTOR_DIR="$BASE/$(ls "$BASE")"
DEST="$TRAKTOR_DIR/Traktor Settings.tsi"

ln -sfn "$SRC" "$DEST"
