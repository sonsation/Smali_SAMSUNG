.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$1;,
        Landroid/widget/Editor$2;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$MagnifierView;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$SFEffectsAPI;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$UndoInputFilter;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_HANDLER:Z = false

.field private static final DEBUG_MAGNIFIER:Z = false

.field private static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final ERROR_MESSAGE_LAYOUT:I = 0x1090134

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final HANDLE_MAGNIFIYING_ANIMATOR:I = 0x5

.field private static final HANDLE_RESET_SIZE_POSITION_ANIMATOR:I = 0x6

.field public static final HANDLE_TYPE_INSERTION:I = 0x3

.field public static final HANDLE_TYPE_NONE:I = 0x0

.field public static final HANDLE_TYPE_SELECTION_END:I = 0x2

.field public static final HANDLE_TYPE_SELECTION_START:I = 0x1

.field private static final INSERTION_HANDLE_HIDE_ANIMATOR:I = 0x4

.field private static final INSERTION_HANDLE_SHOW_ANIMATOR:I = 0x3

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MAGNIFIER_FEATURE_ENABLE:Z = false

.field private static final MENU_ITEM_ORDER_COPY:I = 0x4

.field private static final MENU_ITEM_ORDER_CUT:I = 0x3

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x5

.field private static final MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x6

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0xa

.field private static final MENU_ITEM_ORDER_REDO:I = 0x2

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final MENU_ITEM_ORDER_UNDO:I = 0x1

.field private static final SELECTION_HANDLE_HIDE_ANIMATOR:I = 0x2

.field private static final SELECTION_HANDLE_SHOW_ANIMATOR:I = 0x1

.field private static final SWITCH_CONTROL_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TAP_STATE_DOUBLE_TAP:I = 0x2

.field private static final TAP_STATE_FIRST_TAP:I = 0x1

.field private static final TAP_STATE_INITIAL:I = 0x0

.field private static final TAP_STATE_TRIPLE_CLICK:I = 0x3

.field private static final TEMP_POSITION:[F

.field private static final TW_ERROR_MESSAGE_LAYOUT:I = 0x1090172

.field private static final TW_MENU_ITEM_ORDER_CLIPBOARD:I = 0x6

.field private static final TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final TW_MENU_ITEM_ORDER_COPY:I = 0x3

.field private static final TW_MENU_ITEM_ORDER_CUT:I = 0x2

.field private static final TW_MENU_ITEM_ORDER_DICTIONARY:I = 0x7

.field private static final TW_MENU_ITEM_ORDER_PASTE:I = 0x4

.field private static final TW_MENU_ITEM_ORDER_SELECT_ALL:I = 0x1

.field private static final TW_MENU_ITEM_ORDER_SHARE:I = 0x5

.field private static final TW_MENU_ITEM_ORDER_TRANSLATE:I = 0x8

.field private static final TW_MENU_ITEM_ORDER_WEBSEARCH:I = 0x9

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1

.field private static final mDisableDoubleTapTextSelection:Z


# instance fields
.field private animatorStarter:Landroid/os/Handler;

.field mAllowUndo:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorShiftOffset:I

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

.field mDiscardNextActionUp:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field private mIgnoreNextMouseActionUpOrDown:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field private mIsCurrentSelecting:Z

.field mIsInsertionActionModeStartPending:Z

.field private mIsMagnifierShowing:Z

.field private mIsSupportMagnifier:Z

.field private mIsThemeDeviceDefault:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mLastButtonState:I

.field mLastDownPositionRawX:F

.field mLastDownPositionRawY:F

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mLastTouchUpTime:J

.field private mMagnifierView:Landroid/widget/Editor$MagnifierView;

.field private final mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRestartActionModeOnNextRefresh:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTapState:I

.field private mTempRect:Landroid/graphics/Rect;

.field mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private mUpdateWordIteratorText:Z

.field mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    return v0
.end method

.method static synthetic -get10(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object v0
.end method

.method static synthetic -get12(Landroid/widget/Editor;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor;->mTapState:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get14(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object v0
.end method

.method static synthetic -get16(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Editor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/Editor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    return v0
.end method

.method static synthetic -get6(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/Editor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return v0
.end method

.method static synthetic -get8(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set4(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set5(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set6(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor;)Landroid/text/Layout;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Landroid/widget/Editor;IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Landroid/widget/Editor;I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Landroid/widget/Editor;I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 1
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Landroid/widget/Editor;II)J
    .locals 2
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap21(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->prepareAnimatorHander()V

    return-void
.end method

.method static synthetic -wrap22(Landroid/widget/Editor;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->removeAnimator(I)V

    return-void
.end method

.method static synthetic -wrap23(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static synthetic -wrap24(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic -wrap25(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static synthetic -wrap26(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap27(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/widget/Editor;I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->hasAnimator(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/Editor;I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnabled()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 169
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 358
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Framework_DisableDoubleTapTextSelection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 206
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string/jumbo v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 207
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 208
    iput-boolean v4, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 211
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    .line 215
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    .line 216
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    .line 220
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    .line 252
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    .line 261
    iput-boolean v4, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 278
    iput-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 290
    iput v2, p0, Landroid/widget/Editor;->mCursorShiftOffset:I

    .line 309
    iput v2, p0, Landroid/widget/Editor;->mTapState:I

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 342
    new-instance v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 344
    new-instance v0, Landroid/widget/Editor$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 353
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 355
    new-instance v0, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 2924
    new-instance v0, Landroid/widget/Editor$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    .line 2923
    iput-object v0, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 6067
    iput-object v3, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    .line 8190
    iput-object v3, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    .line 362
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 364
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 365
    new-instance v0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V

    iput-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 367
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    .line 361
    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 809
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 810
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 812
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 813
    const v2, 0x1050068

    .line 812
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 814
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 815
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    .line 814
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 816
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 817
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 818
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 817
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 825
    :cond_0
    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 826
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 808
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2489
    sub-float v5, p2, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 2490
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2492
    :cond_0
    const/4 v0, 0x0

    .line 2493
    .local v0, "drawableWidth":I
    if-eqz p1, :cond_1

    .line 2494
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2495
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2500
    :goto_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    .line 2501
    .local v3, "scrollX":I
    int-to-float v5, v3

    sub-float v1, p2, v5

    .line 2502
    .local v1, "horizontalDiff":F
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 2503
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    .line 2502
    sub-int v4, v5, v6

    .line 2506
    .local v4, "viewClippedWidth":I
    int-to-float v5, v4

    sub-float/2addr v5, v7

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2

    .line 2508
    add-int v5, v4, v3

    iget-object v6, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v6

    sub-int v2, v5, v6

    .line 2518
    .local v2, "left":I
    :goto_1
    return v2

    .line 2497
    .end local v1    # "horizontalDiff":F
    .end local v2    # "left":I
    .end local v3    # "scrollX":I
    .end local v4    # "viewClippedWidth":I
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2509
    .restart local v1    # "horizontalDiff":F
    .restart local v3    # "scrollX":I
    .restart local v4    # "viewClippedWidth":I
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-lez v5, :cond_3

    .line 2510
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2511
    const/high16 v5, 0x100000

    sub-int/2addr v5, v3

    int-to-float v5, v5

    int-to-float v6, v4

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 2512
    cmpg-float v5, p2, v7

    if-gtz v5, :cond_4

    .line 2514
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v5

    .line 2512
    .restart local v2    # "left":I
    goto :goto_1

    .line 2516
    .end local v2    # "left":I
    :cond_4
    float-to-int v5, p2

    iget-object v6, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    .restart local v2    # "left":I
    goto :goto_1
.end method

.method private discardTextDisplayLists()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v3, :cond_2

    .line 504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 505
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 506
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    iget-object v0, v3, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 507
    .local v0, "displayList":Landroid/view/RenderNode;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/view/RenderNode;->discardDisplayList()V

    .line 504
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "displayList":Landroid/view/RenderNode;
    :cond_1
    move-object v0, v2

    .line 506
    goto :goto_1

    .line 502
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1360
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1361
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1362
    check-cast v2, Landroid/text/Spannable;

    .line 1364
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    .line 1363
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1365
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1366
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1367
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 1368
    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1369
    and-int/lit8 v0, v0, -0x2

    .line 1370
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1359
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetHorizontal"    # I
    .param p3, "cursorOffsetVertical"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1979
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 1980
    .local v1, "translate":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1981
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_3

    .line 1982
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1981
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_2
    move v1, v2

    .line 1979
    goto :goto_0

    .line 1984
    .restart local v0    # "i":I
    .restart local v1    # "translate":Z
    :cond_3
    if-eqz v1, :cond_4

    neg-int v2, p2

    int-to-float v2, v2

    neg-int v3, p3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1978
    :cond_4
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1858
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v28

    .line 1859
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1860
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1861
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    return-void

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1863
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1866
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_c

    .line 1867
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v4, :cond_1

    .line 1868
    const-class v4, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    :cond_1
    move-object/from16 v21, p2

    .line 1871
    check-cast v21, Landroid/text/DynamicLayout;

    .line 1872
    .local v21, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 1873
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 1874
    .local v17, "blockIndices":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 1875
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 1877
    .local v24, "indexFirstChangedBlock":I
    const/16 v22, -0x1

    .line 1878
    .local v22, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 1879
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 1880
    aget v14, v15, v23

    .line 1881
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 1883
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    const/16 v18, 0x1

    .line 1884
    .local v18, "blockIsInvalid":Z
    :goto_1
    if-eqz v18, :cond_3

    .line 1885
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v16

    .line 1888
    aput v16, v17, v23

    .line 1889
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-eqz v4, :cond_2

    .line 1890
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1892
    :cond_2
    add-int/lit8 v33, v16, 0x1

    .line 1895
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-nez v4, :cond_4

    .line 1896
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1897
    new-instance v5, Landroid/widget/Editor$TextRenderNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    .line 1896
    aput-object v5, v4, v16

    .line 1900
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v13

    .line 1901
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    iget-object v12, v4, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 1902
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    if-eqz v13, :cond_a

    .line 1903
    :cond_5
    add-int/lit8 v11, v22, 0x1

    .line 1904
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 1905
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 1906
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 1907
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 1908
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1909
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 1910
    .local v30, "min":F
    const/16 v27, 0x1

    .line 1911
    .local v27, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_2
    move/from16 v0, v26

    if-gt v0, v14, :cond_7

    .line 1912
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1913
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1911
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1883
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1915
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v18    # "blockIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_7
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1916
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1920
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_8
    if-eqz v13, :cond_9

    .line 1922
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    .line 1921
    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v20

    .line 1924
    .local v20, "displayListCanvas":Landroid/view/DisplayListCanvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHighContrastText()Z

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/DisplayListCanvas;->setHighContrastText(Z)V

    .line 1929
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 1930
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1937
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1943
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_9
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_a
    move-object/from16 v4, p1

    .line 1946
    check-cast v4, Landroid/view/DisplayListCanvas;

    invoke-virtual {v4, v12}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 1948
    move/from16 v22, v14

    .line 1879
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 1934
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    .line 1935
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1937
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1934
    throw v4

    .line 1951
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_b
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 1857
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v21    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v22    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :goto_3
    return-void

    .line 1954
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_3
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1665
    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    .line 1666
    :cond_0
    return v7

    .line 1669
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1670
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 1671
    return v7

    .line 1674
    :cond_2
    const/4 v6, -0x2

    if-eq p2, v6, :cond_e

    .line 1675
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1676
    .local v0, "N":I
    if-gez p2, :cond_6

    .line 1677
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1678
    const/4 p2, 0x0

    .line 1679
    move p3, v0

    .line 1712
    :cond_3
    :goto_0
    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 1713
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1724
    .end local v0    # "N":I
    :goto_1
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1725
    const/16 v6, 0x800

    invoke-static {v1, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 1726
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1728
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1729
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1731
    :cond_5
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1732
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1733
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1734
    const/4 v6, 0x1

    return v6

    .line 1683
    .restart local v0    # "N":I
    :cond_6
    add-int/2addr p3, p4

    .line 1685
    instance-of v6, v1, Landroid/text/Spanned;

    if-eqz v6, :cond_9

    move-object v4, v1

    .line 1686
    check-cast v4, Landroid/text/Spanned;

    .line 1688
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Landroid/text/ParcelableSpan;

    .line 1687
    invoke-interface {v4, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1689
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 1690
    .local v2, "i":I
    :cond_7
    :goto_2
    if-lez v2, :cond_9

    .line 1691
    add-int/lit8 v2, v2, -0x1

    .line 1692
    aget-object v6, v5, v2

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1693
    .local v3, "j":I
    if-ge v3, p2, :cond_8

    move p2, v3

    .line 1694
    :cond_8
    aget-object v6, v5, v2

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1695
    if-le v3, p3, :cond_7

    move p3, v3

    goto :goto_2

    .line 1698
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_9
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1699
    sub-int v6, p3, p4

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1701
    if-le p2, v0, :cond_b

    .line 1702
    move p2, v0

    .line 1706
    :cond_a
    :goto_3
    if-le p3, v0, :cond_c

    .line 1707
    move p3, v0

    goto :goto_0

    .line 1703
    :cond_b
    if-gez p2, :cond_a

    .line 1704
    const/4 p2, 0x0

    goto :goto_3

    .line 1708
    :cond_c
    if-gez p3, :cond_3

    .line 1709
    const/4 p3, 0x0

    goto :goto_0

    .line 1716
    :cond_d
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1720
    .end local v0    # "N":I
    :cond_e
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1721
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1722
    const-string/jumbo v6, ""

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 9
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .prologue
    const/4 v5, 0x0

    .line 2830
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 2831
    .local v0, "editable":Landroid/text/Editable;
    iget-object v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 2833
    iget-object v5, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v5

    .line 2837
    :cond_0
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 2838
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v8, Landroid/text/style/SuggestionSpan;

    .line 2837
    invoke-interface {v0, v6, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 2839
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, v4, v5

    .line 2840
    .local v3, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 2841
    .local v2, "start":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v2, v7, :cond_2

    .line 2839
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2844
    :cond_2
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2845
    .local v1, "end":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-ne v1, v7, :cond_1

    .line 2848
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v3, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2849
    return-object v3

    .line 2852
    .end local v1    # "end":I
    .end local v2    # "start":I
    .end local v3    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method private getActiveLayout()Landroid/text/Layout;
    .locals 3

    .prologue
    .line 5457
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5458
    .local v1, "layout":Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5459
    .local v0, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 5460
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5463
    :cond_0
    :goto_0
    return-object v1

    .line 5461
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    .line 1960
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v3, v4

    .line 1961
    .local v3, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1962
    const/4 v0, 0x0

    .line 1963
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 1964
    aget v4, p1, v2

    if-ne v4, v1, :cond_1

    .line 1965
    const/4 v0, 0x1

    .line 1969
    :cond_0
    if-eqz v0, :cond_2

    .line 1961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1963
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1970
    :cond_2
    return v1

    .line 1974
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    iput-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1975
    return v3
.end method

.method private getCharClusterRange(I)J
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1075
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1076
    .local v2, "textLength":I
    if-ge p1, v2, :cond_0

    .line 1077
    invoke-direct {p0, p1, v5}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    .line 1079
    .local v0, "clusterEndOffset":I
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v3

    .line 1078
    invoke-static {v3, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 1081
    .end local v0    # "clusterEndOffset":I
    :cond_0
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    .line 1082
    invoke-direct {p0, p1, v4}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1084
    .local v1, "clusterStartOffset":I
    invoke-direct {p0, v1, v5}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v3

    .line 1083
    invoke-static {v1, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 1086
    .end local v1    # "clusterStartOffset":I
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 14
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    .line 5996
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v8

    .line 5997
    .local v8, "trueLine":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    move/from16 v0, p2

    if-le v0, v12, :cond_1

    .line 6000
    :cond_0
    return v8

    .line 5998
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    if-lez v12, :cond_0

    if-ltz p2, :cond_0

    .line 6003
    sub-int v12, v8, p2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_2

    .line 6005
    return v8

    .line 6008
    :cond_2
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    int-to-float v9, v12

    .line 6009
    .local v9, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    .line 6010
    .local v4, "lineCount":I
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v7, v12, v13

    .line 6012
    .local v7, "slop":F
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v2, v12, v9

    .line 6013
    .local v2, "firstLineTop":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v6, v12, v9

    .line 6014
    .local v6, "prevLineTop":F
    sub-float v12, v6, v7

    add-float v13, v2, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 6016
    .local v11, "yTopBound":F
    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v3, v12, v9

    .line 6017
    .local v3, "lastLineBottom":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v5, v12, v9

    .line 6018
    .local v5, "prevLineBottom":F
    add-float v12, v5, v7

    sub-float v13, v3, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 6022
    .local v10, "yBottomBound":F
    cmpg-float v12, p3, v11

    if-gtz v12, :cond_3

    .line 6023
    add-int/lit8 v12, p2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6029
    .local v1, "currLine":I
    :goto_0
    return v1

    .line 6024
    .end local v1    # "currLine":I
    :cond_3
    cmpl-float v12, p3, v10

    if-ltz v12, :cond_4

    .line 6025
    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v13, v4, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "currLine":I
    goto :goto_0

    .line 6027
    .end local v1    # "currLine":I
    :cond_4
    move/from16 v1, p2

    .restart local v1    # "currLine":I
    goto :goto_0
.end method

.method private getErrorX()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 599
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 601
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 603
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 606
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    .line 609
    :pswitch_0
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 610
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 611
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 610
    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 618
    .local v1, "errorX":I
    :goto_0
    return v1

    .line 614
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_1
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_1
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 615
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v3

    .line 616
    .restart local v1    # "errorX":I
    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    .prologue
    .line 630
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 631
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 632
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    .line 631
    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 634
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 636
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 638
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    .line 641
    :pswitch_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 648
    .local v2, "height":I
    :goto_0
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 654
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 655
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 641
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "height":I
    goto :goto_0

    .line 644
    .end local v2    # "height":I
    :pswitch_1
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    goto :goto_0

    .end local v2    # "height":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "height":I
    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1397
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1398
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1399
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1401
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1402
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1404
    :cond_0
    return v0

    .line 1408
    .end local v0    # "lastTapPosition":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getLastTouchOffsets()J
    .locals 6

    .prologue
    .line 1259
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1260
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1261
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1262
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getMagnifierView()Landroid/widget/Editor$MagnifierView;
    .locals 2

    .prologue
    .line 2414
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    if-nez v0, :cond_0

    .line 2415
    new-instance v0, Landroid/widget/Editor$MagnifierView;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$MagnifierView;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    .line 2417
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    return-object v0
.end method

.method private getNextCursorOffset(IZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .prologue
    .line 1068
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1069
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    return p1

    .line 1070
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-ne p2, v1, :cond_1

    .line 1071
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 1070
    :goto_0
    return v1

    .line 1071
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    goto :goto_0
.end method

.method private getParagraphsRange(II)J
    .locals 9
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    .line 1007
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1008
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 1009
    invoke-static {v7, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6

    .line 1011
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1012
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1014
    .local v3, "minLine":I
    :goto_0
    if-lez v3, :cond_1

    .line 1015
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1016
    .local v4, "prevLineEndOffset":I
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_3

    .line 1021
    .end local v4    # "prevLineEndOffset":I
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1023
    .local v2, "maxLine":I
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 1024
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1025
    .local v1, "lineEndOffset":I
    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4

    .line 1030
    .end local v1    # "lineEndOffset":I
    :cond_2
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    return-wide v6

    .line 1019
    .end local v2    # "maxLine":I
    .restart local v4    # "prevLineEndOffset":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1028
    .end local v4    # "prevLineEndOffset":I
    .restart local v1    # "lineEndOffset":I
    .restart local v2    # "maxLine":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1112
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Landroid/widget/Editor$PositionListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1115
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 2606
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2607
    const v6, 0x1090129

    .line 2606
    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2609
    .local v2, "shadowView":Landroid/widget/TextView;
    if-nez v2, :cond_0

    .line 2610
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unable to inflate text drag thumbnail"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2613
    :cond_0
    sub-int v5, p2, p1

    sget v6, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v5, v6, :cond_1

    .line 2614
    sget v5, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    add-int/2addr v5, p1

    invoke-direct {p0, v5}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v0

    .line 2615
    .local v0, "range":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    .line 2617
    .end local v0    # "range":J
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2618
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2619
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2621
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2622
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2624
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2627
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2628
    .local v3, "size":I
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 2630
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 2631
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 2632
    new-instance v5, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v5, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v5
.end method

.method private getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 856
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 857
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    .line 864
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 865
    return p1

    .line 862
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    goto :goto_0

    .line 867
    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1051
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v1, :cond_0

    .line 1052
    new-instance v1, Landroid/text/method/WordIterator;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1053
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1055
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v1, :cond_1

    .line 1060
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1061
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1062
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1064
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v1
.end method

.method private getWordStart(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 841
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 842
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    .line 849
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 850
    return p1

    .line 847
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    goto :goto_0

    .line 852
    :cond_1
    return v0
.end method

.method private hasAnimator(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 6087
    iget-object v0, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6088
    iget-object v0, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6090
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 726
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 587
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 580
    return-void
.end method

.method private hideFloatingToolbar()V
    .locals 4

    .prologue
    .line 1570
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1572
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    .line 1569
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 720
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2306
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 2307
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 2308
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    .line 2307
    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 2309
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2310
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2311
    const/4 v3, 0x1

    return v3

    .line 2309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2314
    :cond_1
    return v6
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 1164
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1165
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    return v4

    .line 1167
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1168
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 1169
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 1170
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    .line 1171
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    .line 1170
    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v4

    return v4
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1178
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1179
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    return v3

    .line 1181
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 1182
    .local v1, "line":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1184
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    return v3

    .line 1185
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    return v3

    .line 1186
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isPositionVisible(FF)Z
    .locals 11
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1124
    sget-object v5, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v5

    .line 1125
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 1126
    .local v2, "position":[F
    const/4 v4, 0x0

    aput p1, v2, v4

    .line 1127
    const/4 v4, 0x1

    aput p2, v2, v4

    .line 1128
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1130
    :goto_0
    if-eqz v3, :cond_5

    .line 1131
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 1133
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 1134
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 1137
    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    :cond_1
    monitor-exit v5

    .line 1139
    return v8

    .line 1138
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    .line 1142
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1143
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1146
    :cond_3
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 1147
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 1149
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1150
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 1151
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .line 1154
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    monitor-exit v5

    .line 1160
    return v9

    .line 1124
    .end local v2    # "position":[F
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private isUniversalSwitchEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2193
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "universal_switch_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 7007
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private needsToSelectAllToSelectWordOrParagraph()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 871
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    return v4

    .line 878
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 879
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    .line 880
    .local v1, "klass":I
    and-int/lit16 v2, v0, 0xff0

    .line 883
    .local v2, "variation":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 884
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 890
    :cond_1
    return v4

    .line 885
    :cond_2
    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    .line 886
    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 887
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 888
    const/16 v3, 0xd0

    if-eq v2, v3, :cond_1

    .line 889
    const/16 v3, 0xb0

    if-eq v2, v3, :cond_1

    .line 892
    const/4 v3, 0x0

    return v3
.end method

.method private prepareAnimatorHander()V
    .locals 1

    .prologue
    .line 6070
    new-instance v0, Landroid/widget/Editor$5;

    invoke-direct {v0, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    .line 6069
    return-void
.end method

.method private removeAllAnimator()V
    .locals 2

    .prologue
    .line 6101
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    .line 6102
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6104
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6105
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->hideImmediately()V

    .line 6113
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/Editor;->removeAnimator(I)V

    .line 6101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6107
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6109
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6110
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hideImmediately()V

    goto :goto_1

    .line 6099
    :cond_2
    return-void
.end method

.method private removeAnimator(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 6094
    iget-object v0, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->hasAnimator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6095
    iget-object v0, p0, Landroid/widget/Editor;->animatorStarter:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6093
    :cond_0
    return-void
.end method

.method private replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 27
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    .prologue
    .line 2857
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    move-object/from16 v22, v0

    .line 2856
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v21

    .line 2858
    .local v21, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-nez v21, :cond_0

    .line 2860
    return-void

    .line 2862
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 2863
    .local v3, "editable":Landroid/text/Editable;
    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 2864
    .local v10, "spanStart":I
    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 2865
    .local v9, "spanEnd":I
    if-ltz v10, :cond_1

    if-gt v9, v10, :cond_2

    .line 2867
    :cond_1
    return-void

    .line 2870
    :cond_2
    invoke-static {v3, v10, v9}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    .line 2873
    .local v8, "originalText":Ljava/lang/String;
    const-class v22, Landroid/text/style/SuggestionSpan;

    .line 2872
    move-object/from16 v0, v22

    invoke-interface {v3, v10, v9, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/SuggestionSpan;

    .line 2874
    .local v15, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v5, v15

    .line 2875
    .local v5, "length":I
    new-array v0, v5, [I

    move-object/from16 v18, v0

    .line 2876
    .local v18, "suggestionSpansStarts":[I
    new-array v0, v5, [I

    move-object/from16 v16, v0

    .line 2877
    .local v16, "suggestionSpansEnds":[I
    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 2878
    .local v17, "suggestionSpansFlags":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 2879
    aget-object v13, v15, v4

    .line 2880
    .local v13, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    aput v22, v18, v4

    .line 2881
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v22

    aput v22, v16, v4

    .line 2882
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v22

    aput v22, v17, v4

    .line 2885
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    .line 2886
    .local v14, "suggestionSpanFlags":I
    and-int/lit8 v22, v14, 0x2

    if-eqz v22, :cond_3

    .line 2887
    and-int/lit8 v14, v14, -0x3

    .line 2888
    and-int/lit8 v14, v14, -0x2

    .line 2889
    invoke-virtual {v13, v14}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 2878
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2895
    .end local v13    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v14    # "suggestionSpanFlags":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    move/from16 v23, v0

    .line 2894
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v8, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2898
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    move/from16 v19, v0

    .line 2899
    .local v19, "suggestionStart":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 2900
    .local v12, "suggestionEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2902
    .local v11, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v9, v11}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2904
    invoke-virtual/range {v21 .. v21}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v20

    .line 2905
    .local v20, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    move/from16 v22, v0

    aput-object v8, v20, v22

    .line 2908
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v23, v9, v10

    sub-int v6, v22, v23

    .line 2909
    .local v6, "lengthDelta":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_6

    .line 2913
    aget v22, v18, v4

    move/from16 v0, v22

    if-gt v0, v10, :cond_5

    aget v22, v16, v4

    move/from16 v0, v22

    if-lt v0, v9, :cond_5

    .line 2914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v23, v15, v4

    aget v24, v18, v4

    .line 2915
    aget v25, v16, v4

    add-int v25, v25, v6

    aget v26, v17, v4

    .line 2914
    invoke-virtual/range {v22 .. v26}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 2909
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2919
    :cond_6
    add-int v7, v9, v6

    .line 2920
    .local v7, "newCursorPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v7}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 2855
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 782
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 779
    :cond_0
    return-void
.end method

.method private selectCurrentParagraph()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 981
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->canSelectText()Z

    move-result v8

    if-nez v8, :cond_0

    .line 982
    return v9

    .line 985
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 986
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->selectAllText()Z

    move-result v8

    return v8

    .line 989
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 990
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v4

    .line 991
    .local v4, "minLastTouchOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v1

    .line 993
    .local v1, "maxLastTouchOffset":I
    invoke-direct {p0, v4, v1}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v6

    .line 994
    .local v6, "paragraphsRange":J
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 995
    .local v5, "start":I
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    .line 996
    .local v0, "end":I
    if-ge v5, v0, :cond_2

    .line 997
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v5, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 998
    const/4 v8, 0x1

    return v8

    .line 1000
    :cond_2
    return v9
.end method

.method private selectCurrentWord()Z
    .locals 19

    .prologue
    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->canSelectText()Z

    move-result v17

    if-nez v17, :cond_0

    .line 901
    const/16 v17, 0x0

    return v17

    .line 904
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->selectAllText()Z

    move-result v17

    return v17

    .line 908
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 909
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 910
    .local v5, "minOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 913
    .local v4, "maxOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    move v5, v4

    .line 917
    :cond_2
    if-ne v5, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    .line 921
    const-class v18, Landroid/text/style/ReplacementSpan;

    .line 920
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ReplacementSpan;

    .line 923
    .local v9, "replacementSpans":[Landroid/text/style/ReplacementSpan;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-interface/range {v17 .. v18}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 925
    .local v11, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-interface/range {v17 .. v18}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 927
    .local v10, "selEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v11, v10}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 928
    if-le v10, v11, :cond_3

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 933
    .end local v9    # "replacementSpans":[Landroid/text/style/ReplacementSpan;
    .end local v10    # "selEnd":I
    .end local v11    # "selStart":I
    :cond_4
    if-ltz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    if-le v5, v0, :cond_6

    :cond_5
    const/16 v17, 0x0

    return v17

    .line 934
    :cond_6
    if-ltz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    if-le v4, v0, :cond_8

    :cond_7
    const/16 v17, 0x0

    return v17

    .line 939
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    .line 940
    const-class v18, Landroid/text/style/URLSpan;

    .line 939
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/URLSpan;

    .line 941
    .local v15, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    .line 942
    const-class v18, Landroid/text/style/ReplacementSpan;

    .line 941
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ReplacementSpan;

    .line 944
    .restart local v9    # "replacementSpans":[Landroid/text/style/ReplacementSpan;
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 945
    const/16 v17, 0x0

    aget-object v14, v15, v17

    .line 946
    .local v14, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 947
    .local v13, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 972
    .end local v14    # "urlSpan":Landroid/text/style/URLSpan;
    .local v12, "selectionEnd":I
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v13, v12}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 973
    if-le v12, v13, :cond_e

    const/16 v17, 0x1

    :goto_2
    return v17

    .line 949
    .end local v12    # "selectionEnd":I
    .end local v13    # "selectionStart":I
    :cond_a
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 950
    const/16 v17, 0x0

    aget-object v8, v9, v17

    .line 951
    .local v8, "replacementSpan":Landroid/text/style/ReplacementSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 952
    .restart local v13    # "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spanned;

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .restart local v12    # "selectionEnd":I
    goto :goto_1

    .line 957
    .end local v8    # "replacementSpan":Landroid/text/style/ReplacementSpan;
    .end local v12    # "selectionEnd":I
    .end local v13    # "selectionStart":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v16

    .line 958
    .local v16, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 960
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v13

    .line 961
    .restart local v13    # "selectionStart":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v12

    .line 963
    .restart local v12    # "selectionEnd":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_c

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_d

    .line 966
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v6

    .line 967
    .local v6, "range":J
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v13

    .line 968
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v12

    goto/16 :goto_1

    .line 964
    .end local v6    # "range":J
    :cond_d
    if-ne v13, v12, :cond_9

    goto :goto_3

    .line 973
    .end local v16    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_e
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2152
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2155
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2156
    return v2

    .line 2158
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2159
    return v2

    .line 2161
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2170
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2171
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2172
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 2175
    :cond_4
    return v3

    .line 2163
    :cond_5
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    .line 2164
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    if-eqz v0, :cond_6

    .line 2166
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    invoke-virtual {v0}, Landroid/widget/Editor$MagnifierView;->stopMagnifier()V

    .line 2168
    :cond_6
    return v2
.end method

.method private sendUpdateSelection()V
    .locals 7

    .prologue
    .line 1778
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_1

    .line 1779
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1780
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1781
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1782
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1783
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 1784
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 1785
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1786
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1787
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1788
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1792
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1777
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 569
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 570
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 571
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 573
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 575
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 576
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 577
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 568
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2552
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2554
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2555
    .local v1, "start":I
    if-gez v1, :cond_1

    return v2

    .line 2552
    .end local v1    # "start":I
    :cond_0
    return v2

    .line 2557
    .restart local v1    # "start":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2558
    .local v0, "end":I
    if-gez v0, :cond_2

    return v2

    .line 2560
    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1464
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1465
    return v4

    .line 1468
    :cond_0
    iget v2, p0, Landroid/widget/Editor;->mLastButtonState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 1469
    .local v1, "primaryButtonStateChanged":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1470
    .local v0, "action":I
    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_2

    .line 1471
    :cond_1
    if-eqz v1, :cond_5

    .line 1474
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1475
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1478
    :cond_3
    return v4

    .line 1468
    .end local v0    # "action":I
    .end local v1    # "primaryButtonStateChanged":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "primaryButtonStateChanged":Z
    goto :goto_0

    .line 1472
    .restart local v0    # "action":I
    :cond_5
    return v5

    .line 1476
    :cond_6
    return v5
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 14

    .prologue
    .line 2244
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 2245
    .local v10, "text":Ljava/lang/CharSequence;
    instance-of v13, v10, Landroid/text/Spannable;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return v13

    :cond_0
    move-object v8, v10

    .line 2247
    check-cast v8, Landroid/text/Spannable;

    .line 2248
    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 2249
    .local v5, "selectionStart":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2251
    .local v4, "selectionEnd":I
    const-class v13, Landroid/text/style/SuggestionSpan;

    .line 2250
    invoke-interface {v8, v5, v4, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/SuggestionSpan;

    .line 2252
    .local v9, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v13, v9

    if-nez v13, :cond_1

    .line 2253
    const/4 v13, 0x0

    return v13

    .line 2255
    :cond_1
    if-ne v5, v4, :cond_4

    .line 2257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v13, v9

    if-ge v1, v13, :cond_3

    .line 2258
    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_2

    .line 2259
    const/4 v13, 0x1

    return v13

    .line 2257
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2262
    :cond_3
    const/4 v13, 0x0

    return v13

    .line 2264
    .end local v1    # "i":I
    :cond_4
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2265
    .local v3, "minSpanStart":I
    const/4 v2, 0x0

    .line 2266
    .local v2, "maxSpanEnd":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 2267
    .local v12, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 2268
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v0, 0x0

    .line 2269
    .local v0, "hasValidSuggestions":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v13, v9

    if-ge v1, v13, :cond_9

    .line 2270
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 2271
    .local v7, "spanStart":I
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2272
    .local v6, "spanEnd":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2273
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2274
    if-lt v5, v7, :cond_5

    if-le v5, v6, :cond_6

    .line 2269
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2279
    :cond_6
    if-nez v0, :cond_7

    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_8

    :cond_7
    const/4 v0, 0x1

    .line 2281
    :goto_3
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2283
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_2

    .line 2279
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2285
    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_9
    if-nez v0, :cond_a

    .line 2286
    const/4 v13, 0x0

    return v13

    .line 2288
    :cond_a
    if-lt v12, v11, :cond_b

    .line 2290
    const/4 v13, 0x0

    return v13

    .line 2292
    :cond_b
    if-lt v3, v12, :cond_c

    .line 2293
    if-le v2, v11, :cond_d

    .line 2296
    :cond_c
    const/4 v13, 0x0

    return v13

    .line 2298
    :cond_d
    const/4 v13, 0x1

    return v13
.end method

.method private showError()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 515
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 516
    iput-boolean v7, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 517
    return-void

    .line 520
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 521
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 523
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v4, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    if-eqz v4, :cond_2

    .line 524
    const v4, 0x1090172

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 529
    .local v0, "err":Landroid/widget/TextView;
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 530
    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 531
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 532
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v7}, Landroid/widget/Editor$ErrorPopup;->setOutsideTouchable(Z)V

    .line 535
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v7}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 538
    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 539
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 540
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 543
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 514
    return-void

    .line 526
    .end local v3    # "tv":Landroid/widget/TextView;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const v4, 0x1090134

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "err":Landroid/widget/TextView;
    goto :goto_0
.end method

.method private showFloatingToolbar()V
    .locals 6

    .prologue
    .line 1577
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 1580
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1581
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1576
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private startDragAndDrop()V
    .locals 8

    .prologue
    .line 1191
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1192
    return-void

    .line 1194
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1195
    .local v4, "start":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1196
    .local v1, "end":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1197
    .local v3, "selectedText":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    invoke-static {v5, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1198
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v5, v4, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1199
    .local v2, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v6

    .line 1200
    const/16 v7, 0x100

    .line 1199
    invoke-virtual {v5, v0, v6, v2, v7}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1201
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1202
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1203
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1189
    :cond_1
    return-void
.end method

.method private startSelectionActionModeInternal()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2197
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2198
    return v3

    .line 2200
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    .line 2202
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 2203
    return v3

    .line 2206
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2211
    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2213
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .line 2214
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2219
    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_5

    .line 2220
    .local v2, "selectionStarted":Z
    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2227
    :cond_2
    :goto_2
    return v2

    .line 2207
    .end local v2    # "selectionStarted":Z
    :cond_3
    return v3

    .line 2216
    :cond_4
    const-string/jumbo v4, "Editor"

    const-string/jumbo v5, "Action mode didn\'t start because Universal switch was enabled."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v2, v3

    .line 2219
    goto :goto_1

    .line 2220
    .restart local v2    # "selectionStarted":Z
    :cond_6
    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    if-nez v4, :cond_2

    .line 2222
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2223
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    .line 2224
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_2
.end method

.method private stopTextActionModeWithPreservingSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2361
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2362
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2364
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2365
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2366
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2360
    return-void
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 773
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1090
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1091
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1093
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 1094
    return v7

    .line 1097
    :cond_0
    if-le v4, v3, :cond_1

    .line 1098
    move v5, v4

    .line 1099
    .local v5, "tmp":I
    move v4, v3

    .line 1100
    move v3, v5

    .line 1101
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v5}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1104
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1105
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1106
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1108
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method private updateCursorPosition(IIIF)V
    .locals 11
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    .line 2444
    iget-object v7, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, p1

    if-nez v7, :cond_0

    .line 2445
    iget-object v7, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 2446
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v9, v9, Landroid/widget/TextView;->mCursorDrawableRes:I

    .line 2445
    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v7, p1

    .line 2447
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v7, p1

    .line 2449
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v7, p4, v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 2450
    iget-object v7, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2451
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2452
    float-to-int v7, p4

    iget-object v8, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    .line 2453
    .local v3, "left":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 2455
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v7, Landroid/widget/TextView;->mCursorWidth:I

    .line 2456
    .local v1, "cursorWidth":I
    iget-object v7, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v7, v6, v7

    iget-object v8, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v5, v7, v8

    .line 2458
    .local v5, "visibleCursorWidth":I
    if-ge v5, v1, :cond_2

    .line 2459
    sub-int v7, v1, v5

    add-int/2addr v6, v7

    .line 2462
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v7, p2, v7

    add-int v8, v3, v6

    .line 2463
    iget-object v9, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, p3

    .line 2462
    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2466
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 2467
    .local v4, "tvWidth":I
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/Editor;->mCursorShiftOffset:I

    .line 2468
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    sub-int v7, v3, v7

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    add-int v0, v7, v1

    .line 2469
    .local v0, "clippedCursorWidth":I
    if-lez v0, :cond_3

    if-ge v0, v1, :cond_3

    .line 2470
    iput v0, p0, Landroid/widget/Editor;->mCursorShiftOffset:I

    .line 2471
    iget v7, p0, Landroid/widget/Editor;->mCursorShiftOffset:I

    sub-int v7, v3, v7

    iget-object v8, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v8, p2, v8

    .line 2472
    add-int v9, v3, v6

    iget v10, p0, Landroid/widget/Editor;->mCursorShiftOffset:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, p3

    .line 2471
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2443
    :cond_3
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1529
    iget-object v8, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_0

    .line 1530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1533
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    invoke-static {v8}, Landroid/widget/Editor$InsertionPointCursorController;->-get0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1534
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    invoke-static {v8}, Landroid/widget/Editor$InsertionPointCursorController;->-get0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$InsertionHandleView;->isDragging()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1535
    invoke-direct {p0}, Landroid/widget/Editor;->hideFloatingToolbar()V

    goto :goto_0

    .line 1541
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1547
    :cond_2
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 1549
    .local v7, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1550
    .local v4, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1552
    .local v5, "eventY":F
    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    sub-float v0, v4, v8

    .line 1553
    .local v0, "deltaX":F
    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    sub-float v1, v5, v8

    .line 1554
    .local v1, "deltaY":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v2, v8, v9

    .line 1556
    .local v2, "distanceSquared":F
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 1557
    .local v6, "touchSlop":I
    mul-int v8, v6, v6

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-lez v8, :cond_4

    const/4 v3, 0x1

    .line 1558
    .local v3, "enoughToStartDrag":Z
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1559
    invoke-direct {p0}, Landroid/widget/Editor;->hideFloatingToolbar()V

    goto :goto_0

    .line 1542
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v3    # "enoughToStartDrag":Z
    .end local v4    # "eventX":F
    .end local v5    # "eventY":F
    .end local v6    # "touchSlop":I
    .end local v7    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->hideFloatingToolbar()V

    goto/16 :goto_0

    .line 1557
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "eventX":F
    .restart local v5    # "eventY":F
    .restart local v6    # "touchSlop":I
    .restart local v7    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1564
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "eventX":F
    .end local v5    # "eventY":F
    .end local v6    # "touchSlop":I
    .end local v7    # "viewConfig":Landroid/view/ViewConfiguration;
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    goto/16 :goto_0

    .line 1530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    .line 744
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 745
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 747
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 750
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 752
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    goto :goto_0
.end method

.method private updateTapState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1442
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 1443
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    .line 1445
    .local v1, "isMouse":Z
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    if-eq v2, v6, :cond_0

    .line 1446
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    if-ne v2, v7, :cond_4

    .line 1445
    if-eqz v1, :cond_4

    .line 1447
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    sub-long/2addr v2, v4

    .line 1448
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 1447
    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 1449
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    if-ne v2, v6, :cond_3

    .line 1450
    iput v7, p0, Landroid/widget/Editor;->mTapState:I

    .line 1458
    .end local v1    # "isMouse":Z
    :cond_1
    :goto_0
    if-ne v0, v6, :cond_2

    .line 1459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 1440
    :cond_2
    return-void

    .line 1452
    .restart local v1    # "isMouse":Z
    :cond_3
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/Editor;->mTapState:I

    goto :goto_0

    .line 1455
    :cond_4
    iput v6, p0, Landroid/widget/Editor;->mTapState:I

    goto :goto_0
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2727
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2729
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 2730
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2733
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 2734
    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 2736
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2726
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    .line 791
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 792
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 793
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 796
    :cond_1
    if-eqz p3, :cond_2

    .line 797
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 787
    :cond_2
    :goto_0
    return-void

    .line 800
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 801
    if-eqz p4, :cond_2

    .line 802
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1586
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1587
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1588
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1589
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1590
    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    .line 1591
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1592
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1593
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 1596
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1597
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1603
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 1604
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1585
    .end local v1    # "nesting":I
    :cond_0
    return-void

    .line 1599
    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1600
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1601
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method canRedo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .line 402
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method canUndo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .line 397
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method checkField()Z
    .locals 2

    .prologue
    .line 2184
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2189
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2185
    :cond_1
    const-string/jumbo v0, "TextView"

    .line 2186
    const-string/jumbo v1, "TextView does not support text selection. Selection cancelled."

    .line 2185
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const/4 v0, 0x0

    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 658
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 664
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1610
    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1611
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1612
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1613
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1614
    .local v1, "nesting":I
    if-nez v1, :cond_0

    .line 1615
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1609
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1621
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1622
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1623
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1624
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1620
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    .line 1658
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2231
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2232
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2233
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    :cond_0
    return v1

    .line 2235
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 2
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    .line 1629
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1630
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 1632
    iget-boolean v1, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v1, :cond_3

    .line 1633
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1634
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1641
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 1644
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1645
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1646
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1647
    .local v0, "cursorController":Landroid/widget/Editor$CursorController;
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1628
    .end local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_2
    :goto_2
    return-void

    .line 1635
    :cond_3
    iget-boolean v1, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v1, :cond_1

    .line 1637
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0

    .line 1646
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    goto :goto_1

    .line 1648
    .restart local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_5
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1649
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    goto :goto_2
.end method

.method forgetUndoRedo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 390
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 391
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 392
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 389
    return-void
.end method

.method public getCursorDrawable()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2384
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 2385
    return-object v2

    .line 2388
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v1, :cond_1

    .line 2389
    new-instance v1, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2391
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2392
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2395
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v1
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2399
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 2400
    return-object v2

    .line 2403
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 2404
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2406
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2407
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2410
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v1
.end method

.method public getSuggestionsPopupWindowForTesting()Landroid/widget/Editor$SuggestionsPopupWindow;
    .locals 1

    .prologue
    .line 7012
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 2373
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 2380
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 717
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 715
    return-void
.end method

.method public hideInsertionHandler()V
    .locals 1

    .prologue
    .line 2421
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2422
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 2420
    :cond_0
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 706
    :cond_0
    return-void
.end method

.method invalidateHandlesAndActionMode()V
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 1991
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 1994
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1995
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1987
    :cond_2
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    .prologue
    .line 2032
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v1, :cond_1

    .line 2033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2034
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2033
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 2003
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 2004
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 2005
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    .line 2007
    check-cast v3, Landroid/text/DynamicLayout;

    .line 2008
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 2009
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 2010
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 2012
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .line 2014
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 2015
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 2020
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 2021
    aget v1, v2, v5

    .line 2022
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 2023
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2025
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 2002
    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    .line 2016
    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2026
    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeBlink()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2564
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2566
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2567
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2568
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2563
    :cond_1
    :goto_0
    return-void

    .line 2570
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 434
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 435
    iput-boolean v2, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 438
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 441
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 444
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 446
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 448
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v2, v1, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 451
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 455
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 456
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 432
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 2530
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 2531
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 2536
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2529
    return-void

    .line 2533
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-wrap0(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2745
    iget-boolean v7, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v7, :cond_0

    iget v7, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2746
    iget v7, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    .line 2745
    if-eqz v7, :cond_1

    .line 2747
    :cond_0
    return-void

    .line 2749
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v10, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v11, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 2750
    .local v4, "offset":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 2751
    return-void

    .line 2753
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2754
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2755
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    if-lt v4, v7, :cond_5

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    if-gt v4, v7, :cond_4

    move v7, v8

    :goto_0
    move v2, v7

    .line 2756
    .local v2, "isOnSelection":Z
    :goto_1
    if-nez v2, :cond_3

    .line 2759
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 2760
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2763
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2765
    new-array v6, v12, [Landroid/widget/Editor$SuggestionInfo;

    .line 2766
    .local v6, "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 2767
    new-instance v7, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v7, v13}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo;)V

    aput-object v7, v6, v0

    .line 2766
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "isOnSelection":Z
    .end local v6    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    :cond_4
    move v7, v9

    .line 2755
    goto :goto_0

    :cond_5
    move v2, v9

    .line 2754
    goto :goto_1

    .line 2769
    .restart local v0    # "i":I
    .restart local v2    # "isOnSelection":Z
    .restart local v6    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    :cond_6
    const/16 v7, 0x9

    .line 2770
    const v10, 0x1040371

    .line 2769
    invoke-interface {p1, v9, v9, v7, v10}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    .line 2771
    .local v5, "subMenu":Landroid/view/SubMenu;
    iget-object v7, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v7, v6, v13}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v3

    .line 2772
    .local v3, "numItems":I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_7

    .line 2773
    aget-object v1, v6, v0

    .line 2774
    .local v1, "info":Landroid/widget/Editor$SuggestionInfo;
    iget-object v7, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v5, v9, v9, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 2775
    new-instance v10, Landroid/widget/Editor$4;

    invoke-direct {v10, p0, v1}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 2774
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2772
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2785
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/widget/Editor$SuggestionInfo;
    .end local v3    # "numItems":I
    .end local v5    # "subMenu":Landroid/view/SubMenu;
    .end local v6    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    :cond_7
    const v7, 0x1020032

    .line 2786
    const v10, 0x1040373

    .line 2785
    invoke-interface {p1, v9, v7, v8, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2787
    const/16 v10, 0x7a

    .line 2785
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v7

    .line 2788
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2785
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    .line 2789
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canUndo()Z

    move-result v10

    .line 2785
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2790
    const v7, 0x1020033

    const/4 v10, 0x2

    .line 2791
    const v11, 0x1040374

    .line 2790
    invoke-interface {p1, v9, v7, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2792
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2790
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    .line 2793
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canRedo()Z

    move-result v10

    .line 2790
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2795
    const v7, 0x1020020

    const/4 v10, 0x3

    .line 2796
    const v11, 0x1040003

    .line 2795
    invoke-interface {p1, v9, v7, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2797
    const/16 v10, 0x78

    .line 2795
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v7

    .line 2798
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2795
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    .line 2799
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canCut()Z

    move-result v10

    .line 2795
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2800
    const v7, 0x1020021

    const/4 v10, 0x4

    .line 2801
    const v11, 0x1040001

    .line 2800
    invoke-interface {p1, v9, v7, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2802
    const/16 v10, 0x63

    .line 2800
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v7

    .line 2803
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2800
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    .line 2804
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canCopy()Z

    move-result v10

    .line 2800
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2805
    const v7, 0x1020022

    .line 2806
    const v10, 0x104000b

    .line 2805
    invoke-interface {p1, v9, v7, v12, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2807
    const/16 v10, 0x76

    .line 2805
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v7

    .line 2808
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v10

    .line 2805
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 2809
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2805
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2810
    const v7, 0x1020031

    const/4 v10, 0x6

    .line 2811
    const v11, 0x1040370

    .line 2810
    invoke-interface {p1, v9, v7, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2812
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v10

    .line 2810
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 2813
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2810
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2814
    const v7, 0x1020035

    const/4 v10, 0x7

    .line 2815
    const v11, 0x104049b

    .line 2814
    invoke-interface {p1, v9, v7, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2816
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->canShare()Z

    move-result v10

    .line 2814
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 2817
    iget-object v10, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2814
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2818
    const v7, 0x102001f

    const/16 v10, 0x8

    .line 2819
    const v11, 0x104000d

    .line 2818
    invoke-interface {p1, v9, v7, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2820
    const/16 v9, 0x61

    .line 2818
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v7

    .line 2821
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v9

    .line 2818
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 2822
    iget-object v9, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2818
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2824
    iput-boolean v8, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2744
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 462
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 466
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 468
    invoke-direct {p0}, Landroid/widget/Editor;->removeAllAnimator()V

    .line 470
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 474
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 478
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 483
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 484
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 487
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 491
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 492
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 495
    iput-object v2, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 498
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 499
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 459
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    const/4 v6, 0x0

    .line 1800
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1801
    .local v4, "selectionStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1803
    .local v3, "selectionEnd":I
    iget-object v2, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1804
    .local v2, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_1

    .line 1805
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1806
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 1807
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1808
    iget-boolean v5, v2, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v5, :cond_1

    .line 1812
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1818
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v5, :cond_2

    .line 1819
    iget-object v5, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v5, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1822
    :cond_2
    if-eqz p3, :cond_5

    if-ne v4, v3, :cond_5

    iget v5, p0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v5, :cond_5

    .line 1824
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    .line 1825
    iget-object v5, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    if-eqz v5, :cond_3

    .line 1827
    iget-object v5, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    invoke-virtual {v5}, Landroid/widget/Editor$MagnifierView;->stopMagnifier()V

    .line 1830
    :cond_3
    const/4 v0, 0x0

    .line 1831
    .local v0, "cursorOffsetHorizontal":I
    if-nez v4, :cond_4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1832
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 1833
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_4

    .line 1834
    mul-int/lit8 v0, v0, -0x1

    .line 1837
    :cond_4
    invoke-direct {p0, p1, v0, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;II)V

    .line 1840
    const/4 p3, 0x0

    .line 1843
    .end local v0    # "cursorOffsetHorizontal":I
    .end local p3    # "highlight":Landroid/graphics/Path;
    :cond_5
    if-nez p2, :cond_6

    .line 1844
    const-string/jumbo v5, "Editor"

    const-string/jumbo v6, "layout is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return-void

    .line 1848
    :cond_6
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1849
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1799
    :goto_0
    return-void

    .line 1852
    :cond_7
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 2647
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2649
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v18

    .line 2650
    .local v18, "permissions":Landroid/view/DragAndDropPermissions;
    if-eqz v18, :cond_0

    .line 2651
    invoke-virtual/range {v18 .. v18}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 2655
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 2656
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 2657
    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 2658
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 2659
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2657
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2663
    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_1
    if-eqz v18, :cond_2

    .line 2664
    invoke-virtual/range {v18 .. v18}, Landroid/view/DragAndDropPermissions;->release()V

    .line 2668
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    .line 2670
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 2671
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2672
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object v6, v12

    .line 2673
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 2675
    .end local v6    # "dragLocalState":Landroid/widget/Editor$DragLocalState;
    :cond_3
    if-eqz v6, :cond_6

    .line 2676
    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v5, 0x1

    .line 2678
    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_7

    .line 2679
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    .line 2683
    return-void

    .line 2662
    .end local v3    # "clipData":Landroid/content/ClipData;
    .end local v5    # "dragDropIntoItself":Z
    .end local v9    # "i":I
    .end local v11    # "itemCount":I
    .end local v12    # "localState":Ljava/lang/Object;
    .end local v16    # "offset":I
    :catchall_0
    move-exception v22

    .line 2663
    if-eqz v18, :cond_4

    .line 2664
    invoke-virtual/range {v18 .. v18}, Landroid/view/DragAndDropPermissions;->release()V

    .line 2662
    :cond_4
    throw v22

    .line 2676
    .restart local v3    # "clipData":Landroid/content/ClipData;
    .restart local v9    # "i":I
    .restart local v11    # "itemCount":I
    .restart local v12    # "localState":Ljava/lang/Object;
    .restart local v16    # "offset":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 2675
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 2687
    .restart local v5    # "dragDropIntoItself":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 2688
    .local v17, "originalLength":I
    move/from16 v14, v16

    .line 2689
    .local v14, "min":I
    move/from16 v13, v16

    .line 2691
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2694
    if-eqz v5, :cond_a

    .line 2695
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2696
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2697
    .local v7, "dragSourceEnd":I
    move/from16 v0, v16

    if-gt v0, v8, :cond_8

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    sub-int v20, v22, v17

    .line 2700
    .local v20, "shift":I
    add-int v8, v8, v20

    .line 2701
    add-int v7, v7, v20

    .line 2704
    .end local v20    # "shift":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Editor$UndoInputFilter;->setForceMerge(Z)V

    .line 2707
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2710
    add-int/lit8 v22, v8, -0x1

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2711
    .local v19, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    add-int/lit8 v23, v8, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2712
    .local v15, "nextCharIdx":I
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    if-le v15, v0, :cond_9

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2714
    .local v21, "t":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_9

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    add-int/lit8 v23, v19, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2719
    .end local v21    # "t":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Editor$UndoInputFilter;->setForceMerge(Z)V

    .line 2723
    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v19    # "prevCharIdx":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    .line 2646
    return-void

    .line 2718
    .restart local v7    # "dragSourceEnd":I
    .restart local v8    # "dragSourceStart":I
    :catchall_1
    move-exception v22

    .line 2719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Editor$UndoInputFilter;->setForceMerge(Z)V

    .line 2718
    throw v22
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1267
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1269
    if-eqz p1, :cond_d

    .line 1270
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1271
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1275
    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    .line 1276
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_9

    const/4 v0, 0x1

    .line 1278
    .local v0, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1279
    if-eqz v0, :cond_b

    move v5, v6

    .line 1278
    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1281
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    .line 1284
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1285
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    .line 1286
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 1290
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1291
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    .line 1292
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1300
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    .line 1301
    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 1311
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1314
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 1315
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1318
    :cond_5
    iput-boolean v7, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1321
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v6, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1322
    iput-boolean v6, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1324
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1325
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1328
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1265
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_8
    :goto_2
    return-void

    .line 1276
    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    .line 1275
    .end local v0    # "isFocusHighlighted":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    :cond_b
    move v5, v7

    .line 1279
    goto :goto_1

    :cond_c
    move v5, v6

    .line 1278
    goto :goto_1

    .line 1330
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_e

    .line 1331
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1334
    :cond_e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1336
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1337
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1338
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1349
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_8

    .line 1350
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_2

    .line 1340
    :cond_f
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1341
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1342
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1346
    :goto_4
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3

    .line 1344
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_4
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1036
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1037
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1033
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 759
    packed-switch p1, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 762
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 768
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2543
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 2544
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 2539
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1482
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1483
    .local v0, "filterOutEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1484
    if-eqz v0, :cond_1

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1486
    iput-boolean v7, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 1488
    :cond_0
    return-void

    .line 1490
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateTapState(Landroid/view/MotionEvent;)V

    .line 1491
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1493
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1494
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1497
    :cond_2
    iget-boolean v1, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierView()Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1499
    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierView()Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Editor$MagnifierView;->handleTouchEvent(IFF)V

    .line 1502
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 1503
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1504
    iput-object v6, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1507
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 1508
    :cond_5
    iput-boolean v5, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    .line 1509
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    if-eqz v1, :cond_6

    .line 1511
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierView:Landroid/widget/Editor$MagnifierView;

    invoke-virtual {v1}, Landroid/widget/Editor$MagnifierView;->stopMagnifier()V

    .line 1515
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_7

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionRawX:F

    .line 1519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionRawY:F

    .line 1523
    iput-boolean v5, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1524
    iput-boolean v5, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1481
    :cond_7
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2318
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v1

    .line 2319
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2320
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2321
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2322
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2324
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2325
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 2326
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_0

    .line 2328
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2331
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2332
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2334
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 2335
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2338
    :cond_1
    new-instance v3, Landroid/widget/Editor$3;

    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2344
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2345
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    .line 2344
    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2317
    .end local v0    # "offset":I
    :cond_2
    :goto_1
    return-void

    .line 2318
    :cond_3
    const/4 v1, 0x0

    .local v1, "selectAllGotFocus":Z
    goto :goto_0

    .line 2346
    .end local v1    # "selectAllGotFocus":Z
    .restart local v0    # "offset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2347
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1412
    if-eqz p1, :cond_3

    .line 1413
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v1, :cond_0

    .line 1414
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v1}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1415
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1417
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1418
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1411
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    .line 1419
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    .line 1422
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v1, :cond_4

    .line 1423
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v1}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1425
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_5

    .line 1426
    iget-object v1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1429
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1430
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1431
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v1, :cond_6

    .line 1432
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1436
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 7
    .param p1, "handled"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1209
    if-nez p1, :cond_0

    iget v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1220
    .end local p1    # "handled":Z
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1221
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1222
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 1237
    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 1241
    :cond_2
    if-nez p1, :cond_4

    .line 1242
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    .line 1243
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1244
    .restart local p1    # "handled":Z
    iget-boolean v1, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    if-nez v1, :cond_3

    .line 1245
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    .line 1246
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1247
    iput-boolean v5, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    .line 1249
    :cond_3
    iget-boolean v1, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierView()Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1251
    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierView()Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionRawX:F

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionRawY:F

    invoke-virtual {v1, v6, v2, v3}, Landroid/widget/Editor$MagnifierView;->handleTouchEvent(IFF)V

    .line 1255
    .end local p1    # "handled":Z
    :cond_4
    return p1

    .line 1210
    .restart local p1    # "handled":Z
    :cond_5
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 1209
    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1212
    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1211
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1213
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1214
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 1215
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1216
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1217
    const/4 p1, 0x1

    .local p1, "handled":Z
    goto :goto_0

    .line 1224
    .end local v0    # "offset":I
    .end local p1    # "handled":Z
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1225
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    .line 1226
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 1227
    iget-boolean v1, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    if-nez v1, :cond_7

    .line 1228
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    .line 1229
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1230
    iput-boolean v5, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    .line 1232
    :cond_7
    iget-boolean v1, p0, Landroid/widget/Editor;->mIsSupportMagnifier:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/Editor;->mIsMagnifierShowing:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierView()Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1234
    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierView()Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionRawX:F

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionRawY:F

    invoke-virtual {v1, v6, v2, v3}, Landroid/widget/Editor$MagnifierView;->handleTouchEvent(IFF)V

    goto/16 :goto_1
.end method

.method prepareCursorControllers()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 676
    const/4 v3, 0x0

    .line 678
    .local v3, "windowSupportsHandles":Z
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 679
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 680
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 681
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_4

    .line 682
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v4, v6, :cond_5

    const/4 v3, 0x1

    .line 685
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    .line 686
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v4

    :goto_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 687
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    :cond_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 689
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    .line 690
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 691
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_2

    .line 692
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 693
    iput-object v7, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 697
    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 698
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 699
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    .line 700
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 701
    iput-object v7, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 675
    :cond_3
    return-void

    .line 681
    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 682
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v5

    .line 685
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_7
    move v4, v5

    .line 686
    goto :goto_2
.end method

.method redo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 414
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 418
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 413
    return-void
.end method

.method refreshTextActionMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2068
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2069
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2070
    return-void

    .line 2072
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 2073
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 2074
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    .line 2075
    .local v1, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2076
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v3

    .line 2075
    if-eqz v3, :cond_3

    .line 2078
    :cond_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2079
    return-void

    .line 2081
    :cond_3
    if-eqz v0, :cond_7

    .line 2082
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 2083
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_5

    .line 2084
    iget-boolean v3, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v3, :cond_4

    .line 2087
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 2105
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2067
    return-void

    .line 2089
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2094
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_0

    .line 2091
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2092
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 2099
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2101
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_4

    .line 2102
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_0

    .line 2100
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_0
.end method

.method public removeAllHandleMessage()V
    .locals 1

    .prologue
    .line 4506
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4507
    return-void

    .line 4510
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->removeHandleMessage(I)V

    .line 4511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->removeHandleMessage(I)V

    .line 4512
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->removeHandleMessage(I)V

    .line 4513
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->removeHandleMessage(I)V

    .line 4505
    return-void
.end method

.method public removeHandleMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 4520
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4521
    return-void

    .line 4524
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4526
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4519
    :cond_1
    return-void
.end method

.method replace()V
    .locals 3

    .prologue
    .line 422
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 425
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 426
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 428
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 429
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 421
    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1738
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1739
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_3

    .line 1740
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1741
    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_3

    .line 1742
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1743
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1744
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1745
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_3

    .line 1746
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1747
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_3

    .line 1752
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-eqz v6, :cond_2

    .line 1755
    :cond_1
    :goto_0
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1756
    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    .line 1755
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1763
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1764
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1765
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1766
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1767
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1768
    const/4 v0, 0x1

    return v0

    .line 1753
    :cond_2
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_0

    .line 1774
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return v9
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 380
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 381
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 383
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string/jumbo v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 378
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    .prologue
    .line 371
    new-instance v1, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Landroid/widget/Editor;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 372
    .local v1, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 373
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v0}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 374
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v0}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 375
    return-object v1
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    .line 1377
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1382
    invoke-virtual {p0}, Landroid/widget/Editor;->removeAllHandleMessage()V

    .line 1387
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1389
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1392
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1376
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v5, 0x20

    .line 8156
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 8157
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8168
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8169
    const-string/jumbo v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8170
    const-string/jumbo v3, "force"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8172
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 8173
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 8174
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8155
    :cond_0
    return-void
.end method

.method setContextMenuAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2740
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 2741
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 2739
    return-void
.end method

.method setDPIPositionListenerEnalbed(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 8193
    if-eqz p1, :cond_2

    .line 8194
    iget-object v0, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    if-nez v0, :cond_0

    .line 8195
    new-instance v0, Landroid/widget/Editor$6;

    invoke-direct {v0, p0}, Landroid/widget/Editor$6;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    .line 8207
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 8192
    :cond_1
    :goto_0
    return-void

    .line 8209
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    if-eqz v0, :cond_1

    .line 8210
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 8211
    iput-object v2, p0, Landroid/widget/Editor;->mDPIPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 550
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 551
    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 552
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 557
    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 559
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 546
    :cond_2
    :goto_0
    return-void

    .line 561
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 830
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 832
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 833
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    .line 834
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    .line 833
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 829
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public showInsertionHandler()V
    .locals 1

    .prologue
    .line 2427
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2428
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hideImmediately()V

    .line 2430
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2431
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 2426
    :cond_1
    return-void
.end method

.method startInsertionActionMode()V
    .locals 3

    .prologue
    .line 2112
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2113
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2115
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2116
    return-void

    .line 2118
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2121
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .line 2122
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2123
    const/4 v2, 0x1

    .line 2122
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2124
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2111
    :cond_2
    :goto_0
    return-void

    .line 2125
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_0
.end method

.method startSelectionActionMode()Z
    .locals 2

    .prologue
    .line 2137
    invoke-direct {p0}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    move-result v0

    .line 2138
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor;->mIsCurrentSelecting:Z

    if-eqz v1, :cond_1

    .line 2141
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2142
    return v0

    .line 2139
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_0
.end method

.method stopCursorBlink(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 8183
    if-eqz p1, :cond_0

    .line 8184
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 8182
    :goto_0
    return-void

    .line 8186
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2356
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2353
    :cond_0
    return-void
.end method

.method undo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 406
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 410
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 405
    return-void
.end method

.method updateCursorsPositions()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 2040
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_0

    .line 2041
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 2042
    return-void

    .line 2045
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2046
    .local v2, "layout":Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 2047
    .local v5, "offset":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2048
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 2049
    .local v6, "top":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2051
    .local v0, "bottom":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 2053
    move v4, v0

    .line 2054
    .local v4, "middle":I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_1

    .line 2056
    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    .line 2059
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .line 2060
    .local v1, "clamped":Z
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 2062
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    .line 2063
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 2039
    :cond_2
    return-void

    .end local v1    # "clamped":Z
    .end local v4    # "middle":I
    :cond_3
    move v7, v9

    .line 2051
    goto :goto_0
.end method
