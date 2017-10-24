.class public final Lcom/samsung/android/directpeninput/SemDirectPenInput;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/SemDirectPenInput$1;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$2;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;
    }
.end annotation


# static fields
.field public static final BIND_MSG_REQUEST_IME_RECT:I = 0x2

.field public static final BIND_MSG_REQUEST_TARGET_RECT:I = 0x1

.field public static final BIND_MSG_RESULT_IME_CLOSED:I = 0x2

.field public static final BIND_MSG_RESULT_IME_OPENED:I = 0x1

.field public static final BUTTON_DONE:Ljava/lang/String; = "ACTION_DONE"

.field public static final BUTTON_GO:Ljava/lang/String; = "ACTION_GO"

.field public static final BUTTON_SEARCH:Ljava/lang/String; = "ACTION_SEARCH"

.field public static final BUTTON_SEND:Ljava/lang/String; = "ACTION_SEND"

.field private static final CLIENT_SEQUENCE_MASK:I = 0xff

.field private static final CLIENT_UNIQUE_ID_MASK:I = -0x100

.field private static final DEBUG:Z

.field public static final FLAG_HELP_MODE:I = 0x4

.field public static final FLAG_IMAGE_WRITING:I = 0x1

.field public static final FLAG_MATH_WRITING:I = 0x2

.field public static final FLAG_MMS_MODE:I = 0x8

.field public static final FLAG_START_DRAWING_MODE:I = 0x10

.field private static final HELP_MODE_RESULT_CLOSED:Ljava/lang/String; = "CLOSED"

.field private static final HELP_MODE_RESULT_HOVERED:Ljava/lang/String; = "HOVERED"

.field private static final HELP_MODE_RESULT_HOVER_CANCELED:Ljava/lang/String; = "HOVER_CANCELED"

.field private static final HELP_MODE_RESULT_OPENED:Ljava/lang/String; = "OPENED"

.field private static final HELP_MODE_RESULT_TEXT_INSERTED:Ljava/lang/String; = "TEXT_INSERTED"

.field public static final IME_CMD_CANCEL_CLOSE:Ljava/lang/String; = "com.samsung.android.directpeninput/CANCEL_CLOSE"

.field public static final IME_CMD_SEND_BINDER:Ljava/lang/String; = "com.samsung.android.directpeninput/SEND_BINDER"

.field private static final MAX_WAIT:I = 0x5

.field private static final MMS_DATA_DELETE:Ljava/lang/String; = "MMS_DATA_DELETE"

.field private static final MSG_CANCEL_WRITINGBUDDY_CUE:I = 0x6

.field private static final MSG_EDITOR_ACTION_DOWN:I = 0x7

.field private static final MSG_SERVICE_RESULT_RECEIVED:I = 0x3

.field private static final MSG_SERVICE_TEXT_DELETED:I = 0x2

.field private static final MSG_SERVICE_TEXT_INSERTED:I = 0x1

.field private static final MSG_SERVICE_UPDATE_DIALOG:I = 0x8

.field private static final MSG_SERVICE_UPDATE_POSITION:I = 0x4

.field private static final MSG_SERVICE_UPDATE_POSITION_CHECK:I = 0x9

.field private static final MSG_SHOW_WRITINGBUDDY_CUE:I = 0x5

.field public static final RESULT_FIELD_DELIMITER:Ljava/lang/String; = "//"

.field public static final RESULT_STRING_DELIMITER:Ljava/lang/String; = "//"

.field public static final SERVICE_CB_CLIENT_CHANGED:Ljava/lang/String; = "service_cb_client_changed"

.field public static final SERVICE_CB_CLOSED:Ljava/lang/String; = "service_cb_closed"

.field public static final SERVICE_CB_DATA_CHANGED:Ljava/lang/String; = "service_cb_perform_editor_action"

.field public static final SERVICE_CB_INFLATE_DONE:Ljava/lang/String; = "service_cb_inflate_done"

.field public static final SERVICE_CB_INIT_TEXT:Ljava/lang/String; = "service_cb_init_text"

.field public static final SERVICE_CB_PRIVATE:Ljava/lang/String; = "service_cb_private"

.field public static final SERVICE_CB_WRITING_DONE:Ljava/lang/String; = "service_cb_writing_done"

.field public static final SERVICE_EVENT_DATA_CHANGED:I = 0x2

.field public static final SERVICE_EVENT_WRITING_CANCEL:I = 0x1

.field public static final SERVICE_EVENT_WRITING_DONE:I = 0x0

.field private static final START_DELAY_TIME_MS:I = 0x96

.field private static final STATE_EVENT_SERVICE_CALLBACK_CLOSED:I = 0x2

.field private static final STATE_EVENT_SERVICE_CALLBACK_INFLATE_DONE:I = 0x1

.field private static final STATE_EVENT_TYPE_MOTION:I = 0x1

.field private static final STATE_EVENT_TYPE_SERVICE_CALLBACK:I = 0x2

.field private static final STATE_RESET_COUNT:I = 0x3

.field private static final STATE_STEP_STANDBY:I = 0x0

.field private static final STATE_STEP_WRITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DirectPenInput"

.field public static final TEMPLATE_EDITOR:I = 0x16

.field public static final TYPE_BOARD_EDITOR:I = 0x1

.field public static final TYPE_BOARD_NONE:I = 0x0

.field public static final TYPE_BOARD_TEMPLATE:I = 0x2

.field public static final TYPE_EDITOR_NONE:I = 0x0

.field public static final TYPE_EDITOR_NUMBER:I = 0x1

.field public static final TYPE_EDITOR_TEXT:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mBoardTemplate:I

.field private mBoardType:I

.field private mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

.field private mCanShowAutoCompletePopup:Z

.field private mCanStartDirectPenInput:Z

.field private mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

.field private mDPIRect:Landroid/graphics/Rect;

.field private mEditCount:I

.field private mEditorType:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSizeChange:Z

.field private mImageWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

.field private mInitRect:Landroid/graphics/Rect;

.field private mIsCursorBlinkDisabled:Z

.field private mIsForceMode:Z

.field private mIsHelpModeEnabled:Z

.field private mIsHoverState:Z

.field private mIsImageWritingEnabled:Z

.field private mIsMathWritingEnabled:Z

.field private mIsMultiLineEditor:Z

.field private mIsPerformingAction:Z

.field private mIsPopupCueShowMSGCalled:Z

.field private mIsReceiveActionButtonEnabled:Z

.field private mIsWaitingHideSoftInput:Z

.field private mIsWatchActionEnabled:Z

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

.field private mScrRectUpdated:Landroid/graphics/Rect;

.field mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

.field private mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

.field private mShowCnt:I

.field private mState:I

.field private mStateResetCnt:I

.field private mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

.field private mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

.field private mViewID:I

.field private mWindowMode:I

.field private motionEvent:Landroid/view/MotionEvent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/directpeninput/SemDirectPenInput;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 144
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    .line 374
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    .line 388
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 390
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    .line 392
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 394
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 396
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 398
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 400
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    .line 402
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    .line 406
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    .line 408
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    .line 410
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 412
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    .line 414
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    .line 416
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    .line 420
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    .line 2402
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2411
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    .line 2425
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 2429
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    .line 3024
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->initVariable()V

    .line 565
    invoke-virtual {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setParentView(Landroid/view/View;)V

    .line 566
    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p1, p0}, Landroid/view/View;->semSetDirectPenInput(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    .line 570
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p0, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    .line 563
    :goto_0
    return-void

    .line 573
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    goto :goto_0
.end method

.method private canStartDirectPenInput(Z)Z
    .locals 20
    .param p1, "refresh"    # Z

    .prologue
    .line 1881
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 1883
    .local v11, "result":Z
    if-nez p1, :cond_0

    .line 1884
    return v11

    .line 1888
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v11

    .line 1891
    :goto_0
    if-eqz v11, :cond_1

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1893
    const-string/jumbo v18, "pen_writing_buddy"

    const/16 v19, 0x0

    .line 1892
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1893
    const/16 v18, 0x1

    .line 1892
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/4 v11, 0x1

    .line 1897
    .end local v11    # "result":Z
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->isFocusable()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1902
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1904
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v8, Landroid/view/WindowManager$LayoutParams;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v16, v8

    .line 1905
    check-cast v16, Landroid/view/WindowManager$LayoutParams;

    .line 1906
    .local v16, "wlp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v17, "DirectPenInput"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "canStartDirectPenInput : window type= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1908
    const/4 v11, 0x0

    .line 1914
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1916
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    .line 1918
    if-eqz v4, :cond_4

    .line 1934
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1935
    .local v3, "conf":Landroid/content/res/Configuration;
    iget v0, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .line 1937
    .local v7, "isMobileKeyboard":Z
    :goto_4
    if-eqz v7, :cond_4

    .line 1938
    const/4 v11, 0x0

    .line 1939
    .local v11, "result":Z
    const-string/jumbo v17, "DirectPenInput"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "canStartDirectPenInput(): result 7 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    .end local v3    # "conf":Landroid/content/res/Configuration;
    .end local v7    # "isMobileKeyboard":Z
    .end local v11    # "result":Z
    :cond_4
    if-eqz v11, :cond_5

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1947
    .local v9, "p":Landroid/view/ViewParent;
    :goto_5
    if-eqz v9, :cond_5

    instance-of v0, v9, Landroid/view/ViewGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v9

    .line 1948
    check-cast v17, Landroid/view/ViewGroup;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1949
    const/4 v11, 0x0

    .line 1957
    .end local v9    # "p":Landroid/view/ViewParent;
    :cond_5
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1958
    new-instance v6, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v6}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1959
    .local v6, "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v10, Landroid/widget/EditText;

    .line 1960
    .local v10, "parent":Landroid/widget/EditText;
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1962
    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v17, v0

    and-int/lit8 v5, v17, 0xf

    .line 1963
    .local v5, "editorClass":I
    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v12, v0, 0xff0

    .line 1965
    .local v12, "variation":I
    const/16 v17, 0x80

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    .line 1966
    const/16 v17, 0x90

    move/from16 v0, v17

    if-ne v12, v0, :cond_12

    .line 1969
    :cond_6
    :goto_6
    const/4 v11, 0x0

    .line 1973
    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v5, v0, :cond_8

    .line 1974
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_13

    .line 1976
    :cond_8
    :goto_7
    const/4 v11, 0x0

    .line 1980
    :cond_9
    if-eqz v11, :cond_a

    iget-object v0, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1981
    iget-object v0, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string/jumbo v18, "com.samsung.android/disableDirectPenInput"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 1980
    if-eqz v17, :cond_a

    .line 1982
    const/4 v11, 0x0

    .line 1986
    :cond_a
    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0xf

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1987
    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v17, v0

    const/high16 v18, 0x20000

    and-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v17, :cond_14

    const/16 v17, 0x1

    .line 1986
    :goto_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    .line 1990
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 2005
    .end local v5    # "editorClass":I
    .end local v6    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v10    # "parent":Landroid/widget/EditText;
    .end local v12    # "variation":I
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 2007
    const-string/jumbo v17, "DirectPenInput"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "canStartDirectPenInput() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return v11

    .line 1888
    .local v11, "result":Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1892
    :cond_d
    const/4 v11, 0x0

    .local v11, "result":Z
    goto/16 :goto_1

    .line 1898
    .end local v11    # "result":Z
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "result":Z
    goto/16 :goto_2

    .line 1914
    .end local v11    # "result":Z
    :cond_f
    const/4 v4, 0x0

    .local v4, "context":Landroid/content/Context;
    goto/16 :goto_3

    .line 1935
    .end local v4    # "context":Landroid/content/Context;
    .restart local v3    # "conf":Landroid/content/res/Configuration;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1952
    .end local v3    # "conf":Landroid/content/res/Configuration;
    .restart local v9    # "p":Landroid/view/ViewParent;
    :cond_11
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    goto/16 :goto_5

    .line 1967
    .end local v9    # "p":Landroid/view/ViewParent;
    .restart local v5    # "editorClass":I
    .restart local v6    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "parent":Landroid/widget/EditText;
    .restart local v12    # "variation":I
    :cond_12
    const/16 v17, 0xe0

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    .line 1968
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_7

    const/16 v17, 0x10

    move/from16 v0, v17

    if-ne v12, v0, :cond_7

    goto/16 :goto_6

    .line 1975
    :cond_13
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    goto/16 :goto_7

    .line 1987
    :cond_14
    const/16 v17, 0x0

    goto :goto_8

    .line 1986
    :cond_15
    const/16 v17, 0x0

    goto :goto_8

    .line 1990
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_b

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    move-object/from16 v17, v0

    :goto_a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v15

    .line 1992
    .local v15, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    move-object/from16 v17, v0

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 1995
    .local v13, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v14, v17, v18

    .line 1997
    .local v14, "visibleRatio":F
    const v17, 0x3e4ccccd    # 0.2f

    cmpg-float v17, v14, v17

    if-gez v17, :cond_b

    .line 1998
    const/4 v11, 0x0

    .line 2000
    .restart local v11    # "result":Z
    const-string/jumbo v17, "DirectPenInput"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "View is scrolled."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1991
    .end local v11    # "result":Z
    .end local v13    # "viewRect":Landroid/graphics/Rect;
    .end local v14    # "visibleRatio":F
    .end local v15    # "visibleRect":Landroid/graphics/Rect;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    goto :goto_a

    .line 1992
    .restart local v15    # "visibleRect":Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v17, v0

    goto :goto_b
.end method

.method private canStartTemplateDirectPenInput(Z)Z
    .locals 12
    .param p1, "refresh"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2013
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 2015
    .local v4, "result":Z
    if-nez p1, :cond_0

    .line 2016
    return v4

    .line 2020
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v4

    .line 2023
    :goto_0
    if-eqz v4, :cond_1

    .line 2024
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    const/4 v4, 0x1

    .line 2028
    .end local v4    # "result":Z
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2030
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    .line 2032
    if-eqz v1, :cond_2

    .line 2048
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2049
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v7, v8, :cond_9

    move v2, v8

    .line 2051
    .local v2, "isMobileKeyboard":Z
    :goto_3
    if-eqz v2, :cond_2

    .line 2052
    const/4 v4, 0x0

    .line 2058
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v2    # "isMobileKeyboard":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 2059
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2060
    .local v3, "p":Landroid/view/ViewParent;
    :goto_4
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v7, v3

    .line 2061
    nop

    nop

    invoke-virtual {v7}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2062
    const/4 v4, 0x0

    .line 2069
    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_3
    if-eqz v4, :cond_5

    .line 2070
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v7, v8}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 2071
    .local v6, "visibleRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_6
    invoke-direct {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2074
    .local v5, "viewRect":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-eq v7, v8, :cond_5

    .line 2075
    const/4 v4, 0x0

    .line 2077
    .local v4, "result":Z
    sget-boolean v7, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 2078
    const-string/jumbo v7, "DirectPenInput"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "VisibleRect : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " ViewRect : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v7}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2081
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v7, v9}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2082
    iput-object v11, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 2087
    .end local v4    # "result":Z
    .end local v5    # "viewRect":Landroid/graphics/Rect;
    .end local v6    # "visibleRect":Landroid/graphics/Rect;
    :cond_5
    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 2089
    const-string/jumbo v7, "DirectPenInput"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canStartDirectPenInput() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    return v4

    .local v4, "result":Z
    :cond_6
    move v4, v9

    .line 2020
    goto/16 :goto_0

    .line 2024
    :cond_7
    const/4 v4, 0x0

    .local v4, "result":Z
    goto/16 :goto_1

    .line 2028
    .end local v4    # "result":Z
    :cond_8
    const/4 v1, 0x0

    .local v1, "context":Landroid/content/Context;
    goto/16 :goto_2

    .end local v1    # "context":Landroid/content/Context;
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_9
    move v2, v9

    .line 2049
    goto/16 :goto_3

    .line 2065
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .restart local v3    # "p":Landroid/view/ViewParent;
    :cond_a
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto/16 :goto_4

    .line 2070
    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_5

    .line 2071
    .restart local v6    # "visibleRect":Landroid/graphics/Rect;
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_6
.end method

.method private checkDirectPenInputService()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2212
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2214
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.directpeninputservice"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    return v5

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Cannot find DirectPenInputSerivce"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    return v4

    .line 2221
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v4
.end method

.method private checkUseSamsungIME()Z
    .locals 3

    .prologue
    .line 2225
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2226
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 2227
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1

    return v1

    .line 2229
    :cond_0
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Can not find IMM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const/4 v1, 0x0

    return v1
.end method

.method private closeDirectPenInput(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 1869
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v1, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Can not close DirectPenInput, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2756
    move-object v0, p2

    .line 2757
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_0

    .line 2758
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2760
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopupCue()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    .line 1422
    return-void

    .line 1426
    :cond_0
    new-instance v0, Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 1429
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1500
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1420
    return-void
.end method

.method private dismissPopupCue(Z)Z
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 2108
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "dismissPopupCue()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const/4 v0, 0x0

    .line 2114
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2115
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2120
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v1, :cond_2

    .line 2121
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2122
    const/4 v0, 0x1

    .line 2125
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2128
    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2741
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2742
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    .line 2749
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 2744
    :cond_1
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Attempting to create Handler from background thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getModeFlag()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 710
    const/4 v1, 0x0

    .line 712
    .local v1, "flag":I
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    if-eqz v4, :cond_0

    .line 713
    const/4 v1, 0x1

    .line 716
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMathWritingEnabled:Z

    if-eqz v4, :cond_1

    .line 717
    or-int/lit8 v1, v1, 0x2

    .line 720
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHelpModeEnabled:Z

    if-eqz v4, :cond_2

    .line 721
    or-int/lit8 v1, v1, 0x4

    .line 724
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_5

    .line 725
    const/4 v2, 0x0

    .line 726
    .local v2, "isMmsMode":Z
    const/4 v3, 0x0

    .line 728
    .local v3, "isStartDrawingMode":Z
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 729
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 730
    const-string/jumbo v4, "isMmsMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 731
    .local v2, "isMmsMode":Z
    const-string/jumbo v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 733
    .end local v2    # "isMmsMode":Z
    .end local v3    # "isStartDrawingMode":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 734
    or-int/lit8 v1, v1, 0x8

    .line 741
    :cond_4
    if-eqz v3, :cond_5

    .line 742
    or-int/lit8 v1, v1, 0x10

    .line 743
    const-string/jumbo v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_5
    return v1
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2784
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2786
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2787
    filled-new-array {v4, v4}, [I

    move-result-object v0

    .line 2788
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2789
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2791
    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2773
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2775
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2776
    filled-new-array {v4, v4}, [I

    move-result-object v0

    .line 2777
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2778
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2780
    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1
.end method

.method private getTargetDPIRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2798
    .local v12, "widthNormalizer":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 2800
    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v10, p1

    .line 2801
    .local v10, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 2803
    .local v11, "vp":Landroid/view/ViewParent;
    const/4 v9, 0x0

    .line 2804
    .local v9, "top":I
    const/4 v1, 0x0

    .line 2805
    .local v1, "bottomDiff":I
    const/4 v3, 0x0

    .line 2806
    .local v3, "left":I
    const/4 v7, 0x0

    .line 2808
    .local v7, "rightDiff":I
    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    .line 2809
    check-cast v4, Landroid/view/View;

    .line 2812
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 2813
    .local v14, "y":I
    add-int/2addr v9, v14

    .line 2815
    if-gez v14, :cond_0

    .line 2816
    if-gez v9, :cond_0

    .line 2817
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2818
    const/4 v9, 0x0

    .line 2822
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    .line 2823
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    .line 2824
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2825
    const/4 v9, 0x0

    .line 2838
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v2, v15, v16

    .line 2839
    .local v2, "bottomPosY":I
    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 2840
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    .line 2846
    :goto_2
    if-eqz p2, :cond_4

    .line 2848
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 2849
    .local v13, "x":I
    rem-int/2addr v13, v12

    .line 2850
    add-int/2addr v3, v13

    .line 2852
    if-gez v13, :cond_2

    .line 2853
    if-gez v3, :cond_2

    .line 2854
    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2855
    const/4 v3, 0x0

    .line 2859
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 2860
    .local v5, "parentScrollX":I
    rem-int/2addr v5, v12

    .line 2861
    if-lez v5, :cond_3

    .line 2862
    if-le v5, v3, :cond_7

    .line 2863
    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2864
    const/4 v3, 0x0

    .line 2871
    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    .line 2872
    .local v8, "rightPosX":I
    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 2873
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    .line 2880
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    :cond_4
    :goto_4
    move-object v10, v4

    .line 2881
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    .line 2827
    .end local v2    # "bottomPosY":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    .line 2842
    .restart local v2    # "bottomPosY":I
    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    .line 2843
    const/4 v1, 0x0

    goto :goto_2

    .line 2866
    .restart local v5    # "parentScrollX":I
    .restart local v13    # "x":I
    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    .line 2875
    .restart local v8    # "rightPosX":I
    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    .line 2876
    const/4 v7, 0x0

    goto :goto_4

    .line 2884
    .end local v2    # "bottomPosY":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_9
    sget-boolean v15, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "DirectPenInput"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getVisibleRectInWindow : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_a
    return-object v6
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2890
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2892
    .local v12, "widthNormalizer":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 2894
    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v10, p1

    .line 2895
    .local v10, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 2897
    .local v11, "vp":Landroid/view/ViewParent;
    const/4 v9, 0x0

    .line 2898
    .local v9, "top":I
    const/4 v1, 0x0

    .line 2899
    .local v1, "bottomDiff":I
    const/4 v3, 0x0

    .line 2900
    .local v3, "left":I
    const/4 v7, 0x0

    .line 2902
    .local v7, "rightDiff":I
    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    .line 2903
    check-cast v4, Landroid/view/View;

    .line 2906
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 2907
    .local v14, "y":I
    add-int/2addr v9, v14

    .line 2909
    if-gez v14, :cond_0

    .line 2910
    if-gez v9, :cond_0

    .line 2911
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2912
    const/4 v9, 0x0

    .line 2916
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    .line 2917
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    .line 2918
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2919
    const/4 v9, 0x0

    .line 2932
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v2, v15, v16

    .line 2933
    .local v2, "bottomPosY":I
    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 2934
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    .line 2940
    :goto_2
    if-eqz p2, :cond_4

    .line 2942
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 2943
    .local v13, "x":I
    rem-int/2addr v13, v12

    .line 2944
    add-int/2addr v3, v13

    .line 2946
    if-gez v13, :cond_2

    .line 2947
    if-gez v3, :cond_2

    .line 2948
    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2949
    const/4 v3, 0x0

    .line 2953
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 2954
    .local v5, "parentScrollX":I
    rem-int/2addr v5, v12

    .line 2955
    if-lez v5, :cond_3

    .line 2956
    if-le v5, v3, :cond_7

    .line 2957
    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2958
    const/4 v3, 0x0

    .line 2965
    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    .line 2966
    .local v8, "rightPosX":I
    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 2967
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    .line 2974
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    :cond_4
    :goto_4
    move-object v10, v4

    .line 2975
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    .line 2921
    .end local v2    # "bottomPosY":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    .line 2936
    .restart local v2    # "bottomPosY":I
    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    .line 2937
    const/4 v1, 0x0

    goto :goto_2

    .line 2960
    .restart local v5    # "parentScrollX":I
    .restart local v13    # "x":I
    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    .line 2969
    .restart local v8    # "rightPosX":I
    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    .line 2970
    const/4 v7, 0x0

    goto :goto_4

    .line 2978
    .end local v2    # "bottomPosY":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_9
    sget-boolean v15, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "DirectPenInput"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getVisibleRectOnScreen : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    :cond_a
    return-object v6
.end method

.method private getWindowMode()I
    .locals 1

    .prologue
    .line 2734
    const/high16 v0, 0x1000000

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 2323
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2322
    :goto_0
    :pswitch_0
    return-void

    .line 2325
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .line 2326
    .local v4, "text":Ljava/lang/CharSequence;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2327
    .local v5, "where":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2328
    .local v1, "nextCursor":I
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextInserted(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 2332
    .end local v1    # "nextCursor":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "where":I
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2333
    .local v3, "start":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2334
    .local v0, "end":I
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextDeleted(II)V

    goto :goto_0

    .line 2338
    .end local v0    # "end":I
    .end local v3    # "start":I
    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2339
    .local v2, "result":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 2343
    .end local v2    # "result":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionChanged(I)V

    goto :goto_0

    .line 2347
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInputCue()V

    goto :goto_0

    .line 2351
    :pswitch_6
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2352
    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2356
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onUpdateDialog()V

    goto :goto_0

    .line 2360
    :pswitch_8
    invoke-direct {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionCheck(I)V

    goto :goto_0

    .line 2323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private initVariable()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    .line 583
    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 585
    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 587
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 593
    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    .line 595
    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setEditorType(I)V

    .line 580
    return-void
.end method

.method private isDPIShowing()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 989
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v0

    .line 989
    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 989
    if-eqz v0, :cond_0

    .line 992
    return v2

    .line 994
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordInputType(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2983
    if-nez p1, :cond_0

    .line 2984
    return v4

    :cond_0
    move-object v1, p1

    .line 2987
    check-cast v1, Landroid/widget/EditText;

    .line 2988
    .local v1, "et":Landroid/widget/EditText;
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 2989
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 2990
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 2991
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2

    .line 2996
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 2992
    :cond_2
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_1

    .line 2993
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 2994
    :cond_3
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x81

    if-eq v2, v3, :cond_1

    .line 2995
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x91

    if-eq v2, v3, :cond_1

    .line 2998
    return v4
.end method

.method private notifyPositionCheck(I)V
    .locals 7
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x0

    .line 896
    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPositionCheck code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_4

    .line 899
    const/4 v2, 0x0

    .line 900
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 901
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 902
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 904
    .local v1, "scrRect":Landroid/graphics/Rect;
    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update Position check. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 907
    return-void

    .line 901
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 902
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 911
    .local v1, "scrRect":Landroid/graphics/Rect;
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_4

    .line 912
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_4
    :goto_2
    return-void

    .line 914
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pointInView(FF)Z
    .locals 1
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2768
    cmpl-float v1, p2, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 2769
    cmpl-float v1, p3, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 2768
    :cond_0
    return v0
.end method

.method private registerEventListener(Landroid/view/View;)V
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 958
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 965
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 956
    return-void
.end method

.method private registerPositionChangeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2386
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v1, v2, :cond_1

    .line 2388
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2389
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDPIPositionListenerEnalbed(Z)V

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2392
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2393
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2394
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2396
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private resetPenPointerIcon()V
    .locals 3

    .prologue
    .line 1410
    const/16 v1, 0x4e21

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :goto_0
    return-void

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1102
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 1104
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 1107
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    .line 1108
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1110
    const-string/jumbo v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Report current DPI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 1114
    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    .line 1115
    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 1101
    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2432
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2433
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    .line 2435
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2446
    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    .line 2448
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 2449
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 2450
    .local v1, "clientViewID":I
    move v4, p4

    .line 2452
    .local v4, "receivedClientID":I
    if-ne v1, p4, :cond_0

    .line 2453
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 2456
    :cond_0
    const-string/jumbo v7, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2457
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2458
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 2457
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2456
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    const/4 v6, 0x0

    return v6

    .line 2457
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2458
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2464
    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :cond_3
    const/4 v5, 0x1

    .line 2466
    .local v5, "showLog":Z
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-nez v6, :cond_d

    .line 2467
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    .line 2468
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2469
    .local v0, "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_8

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2470
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2473
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2477
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2478
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x96

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2480
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2510
    :cond_5
    :goto_2
    const/4 v6, 0x7

    if-ne v0, v6, :cond_6

    .line 2511
    const/4 v5, 0x0

    .line 2564
    .end local v0    # "action":I
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 2565
    const-string/jumbo v7, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2566
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2567
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 2566
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2565
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_7
    const/4 v6, 0x0

    return v6

    .line 2482
    .restart local v0    # "action":I
    :cond_8
    const/16 v6, 0xa

    if-ne v0, v6, :cond_b

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2483
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 2485
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2486
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2489
    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2491
    :cond_9
    if-eqz v2, :cond_a

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v2, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_a

    .line 2492
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2495
    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2498
    :cond_a
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_4"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x28

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2502
    .end local v2    # "im":Landroid/hardware/input/InputManager;
    :cond_b
    if-nez v0, :cond_c

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2503
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_DOWN"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto/16 :goto_2

    .line 2505
    :cond_c
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2506
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_UP"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x1e

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2514
    .end local v0    # "action":I
    :cond_d
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 2515
    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    .line 2516
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2518
    .restart local v0    # "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_e

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_e

    .line 2519
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "Reset state"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 2521
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 2524
    .end local v0    # "action":I
    :cond_e
    const/4 v6, 0x2

    if-ne p1, v6, :cond_6

    .line 2525
    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    .line 2528
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2531
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    .line 2534
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_f

    .line 2535
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2539
    :cond_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2540
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_11

    .line 2541
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 2547
    :goto_6
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_10

    .line 2548
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 2549
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 2553
    :cond_10
    const-string/jumbo v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 2556
    const-string/jumbo v6, "OPENED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 2559
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x96

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2543
    :cond_11
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "Can not find IMM"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2566
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 2567
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_5
.end method

.method private scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2574
    invoke-static {p3}, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->isDuplicated(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2575
    const/4 v4, 0x0

    return v4

    .line 2578
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    .line 2579
    const/4 v3, 0x1

    .line 2582
    .local v3, "showLog":Z
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 2583
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2584
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 2586
    const-string/jumbo v5, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2587
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2586
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/4 v4, 0x0

    return v4

    .line 2587
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2593
    :cond_2
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-nez v4, :cond_d

    .line 2594
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 2595
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2596
    .local v0, "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2597
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_ENTER"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2600
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x96

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2601
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2641
    :cond_3
    :goto_1
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 2642
    const/4 v3, 0x0

    .line 2687
    .end local v0    # "action":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 2688
    const-string/jumbo v5, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2689
    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2688
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2603
    .restart local v0    # "action":I
    :cond_6
    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    .line 2604
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_MOVE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2606
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 2609
    :cond_7
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2610
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 2612
    .local v1, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2613
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2616
    const-string/jumbo v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2618
    :cond_8
    if-eqz v1, :cond_9

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_9

    .line 2619
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2622
    const-string/jumbo v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2624
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2625
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_3"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2629
    :cond_a
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_4"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2633
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_b
    if-nez v0, :cond_c

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2634
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto/16 :goto_1

    .line 2636
    :cond_c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2637
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_UP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2645
    .end local v0    # "action":I
    :cond_d
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 2646
    const/4 v4, 0x1

    if-ne p1, v4, :cond_e

    .line 2647
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2649
    .restart local v0    # "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 2650
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "Reset state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 2652
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    goto/16 :goto_2

    .line 2654
    .end local v0    # "action":I
    :cond_e
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 2655
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 2658
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 2659
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_f

    .line 2660
    new-instance v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Handler;)V

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    .line 2670
    :goto_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2673
    const-string/jumbo v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 2676
    const-string/jumbo v4, "OPENED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 2679
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    .line 2682
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2666
    :cond_f
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2689
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private sendActionButtonResult(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 1391
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    if-eqz v1, :cond_0

    .line 1393
    const/4 v0, 0x0

    .line 1394
    .local v0, "actionString":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1395
    const-string/jumbo v0, "ACTION_SEND"

    .line 1404
    .local v0, "actionString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;->onButtonClick(Ljava/lang/String;)Z

    .line 1390
    .end local v0    # "actionString":Ljava/lang/String;
    :cond_0
    return-void

    .line 1396
    .local v0, "actionString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1397
    const-string/jumbo v0, "ACTION_SEARCH"

    .local v0, "actionString":Ljava/lang/String;
    goto :goto_0

    .line 1398
    .local v0, "actionString":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1399
    const-string/jumbo v0, "ACTION_GO"

    .local v0, "actionString":Ljava/lang/String;
    goto :goto_0

    .line 1401
    .local v0, "actionString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "ACTION_DONE"

    .local v0, "actionString":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendHelpModeResult(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHelpModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1360
    :cond_0
    return-void
.end method

.method private sendMMSDataDelete(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1366
    :cond_0
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1373
    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1374
    const-string/jumbo v3, "command"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, "commandTxt":Ljava/lang/String;
    const-string/jumbo v3, "result"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "text":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1378
    .local v0, "cmd":I
    const-string/jumbo v3, "action_done_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1379
    const/4 v0, 0x0

    .line 1386
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    invoke-interface {v3, v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;->onEvent(ILjava/lang/CharSequence;)Z

    .line 1372
    .end local v0    # "cmd":I
    .end local v1    # "commandTxt":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 1380
    .restart local v0    # "cmd":I
    .restart local v1    # "commandTxt":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "action_cancel_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1381
    const/4 v0, 0x1

    goto :goto_0

    .line 1382
    :cond_3
    const-string/jumbo v3, "action_composing_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1383
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setupInRuntime()Z
    .locals 8

    .prologue
    .line 599
    const/4 v4, 0x1

    .line 601
    .local v4, "result":Z
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputService()Z

    move-result v5

    if-nez v5, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 603
    const/4 v5, 0x1

    return v5

    .line 607
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 608
    .local v3, "mCurrentUserId":I
    const-string/jumbo v0, ""

    .line 609
    .local v0, "CURRENT_SERVICE_NAME":Ljava/lang/String;
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " setupInRuntime userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sparse-switch v3, :sswitch_data_0

    .line 650
    :try_start_0
    const-string/jumbo v0, "directpeninputmanagerservice"

    .line 654
    :goto_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 655
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 656
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupInRuntime binder, binder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", CURRENT_SERVICE_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-nez v5, :cond_1

    .line 659
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Failed to get DirectPenInputService"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    const/4 v4, 0x0

    .line 667
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    .line 669
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 671
    return v4

    .line 614
    :sswitch_0
    :try_start_1
    const-string/jumbo v0, "directpeninputmanagerserviceknox0"

    goto :goto_0

    .line 617
    :sswitch_1
    const-string/jumbo v0, "directpeninputmanagerserviceknox1"

    goto :goto_0

    .line 620
    :sswitch_2
    const-string/jumbo v0, "directpeninputmanagerserviceknox2"

    goto :goto_0

    .line 623
    :sswitch_3
    const-string/jumbo v0, "directpeninputmanagerserviceknox3"

    goto :goto_0

    .line 626
    :sswitch_4
    const-string/jumbo v0, "directpeninputmanagerserviceknox4"

    goto :goto_0

    .line 629
    :sswitch_5
    const-string/jumbo v0, "directpeninputmanagerserviceknox5"

    goto :goto_0

    .line 632
    :sswitch_6
    const-string/jumbo v0, "directpeninputmanagerservicerestricted0"

    goto :goto_0

    .line 635
    :sswitch_7
    const-string/jumbo v0, "directpeninputmanagerservicerestricted1"

    goto :goto_0

    .line 638
    :sswitch_8
    const-string/jumbo v0, "directpeninputmanagerservicerestricted2"

    goto :goto_0

    .line 641
    :sswitch_9
    const-string/jumbo v0, "directpeninputmanagerservicerestricted3"

    goto :goto_0

    .line 644
    :sswitch_a
    const-string/jumbo v0, "directpeninputmanagerservicerestricted4"

    goto :goto_0

    .line 647
    :sswitch_b
    const-string/jumbo v0, "directpeninputmanagerservicerestricted5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v2

    .line 663
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get ActivityManager :: get default binder to avoid error, mWBManager:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v4, 0x0

    goto :goto_1

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method private showDirectPenInput()Z
    .locals 3

    .prologue
    .line 1649
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v1

    return v1

    .line 1652
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1653
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1654
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1655
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 1657
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v1

    return v1
.end method

.method private showDirectPenInputCue()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1539
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1540
    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 1542
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1543
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue because mParentView is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void

    .line 1548
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v6

    .line 1549
    .local v2, "isShown":Z
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1550
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v2

    .line 1554
    :cond_2
    if-nez v2, :cond_3

    .line 1555
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void

    .line 1559
    :cond_3
    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    .line 1560
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1561
    .local v4, "visualRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1562
    .local v3, "viewRect":Landroid/graphics/Rect;
    const/16 v0, 0x64

    .line 1563
    .local v0, "bottomOffset":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, -0x64

    if-lt v5, v7, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_7

    .line 1564
    :cond_4
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue. viewRect is smaller than wndRect"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "viewRect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void

    .line 1560
    .end local v0    # "bottomOffset":I
    .end local v3    # "viewRect":Landroid/graphics/Rect;
    .end local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1561
    .restart local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 1571
    .end local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->createPopupCue()V

    .line 1573
    const/4 v1, 0x0

    .line 1574
    .local v1, "cueType":I
    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v5, v6, :cond_9

    .line 1575
    iget-boolean v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v5, :cond_8

    .line 1576
    const/4 v1, 0x2

    .line 1585
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/directpeninput/PopupCue;->show(ILandroid/view/MotionEvent;)V

    .line 1588
    const-string/jumbo v5, "HOVERED"

    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1536
    return-void

    .line 1578
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 1581
    :cond_9
    const/4 v1, 0x3

    goto :goto_2
.end method

.method private showDirectPenInput_dialog()Z
    .locals 33

    .prologue
    .line 1664
    const/16 v30, 0x0

    .line 1666
    .local v30, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1667
    const/4 v2, 0x0

    return v2

    .line 1670
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1671
    .local v6, "wndToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1673
    .local v5, "appToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 1674
    .local v7, "wndRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 1675
    .local v8, "scrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 1677
    .local v7, "wndRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 1683
    .end local v7    # "wndRect":Landroid/graphics/Rect;
    .end local v8    # "scrRect":Landroid/graphics/Rect;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1684
    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1685
    .local v10, "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1686
    .local v11, "ei":Landroid/view/inputmethod/EditorInfo;
    new-instance v32, Landroid/view/inputmethod/EditorInfo;

    invoke-direct/range {v32 .. v32}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1688
    .local v32, "upView_ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v29, v0

    check-cast v29, Landroid/widget/EditText;

    .line 1690
    .local v29, "parent":Landroid/widget/EditText;
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v10}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 1691
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    .line 1694
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1696
    const/16 v27, 0x0

    .line 1697
    .local v27, "flagPrevNext":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v31

    .line 1698
    .local v31, "upView":Landroid/view/View;
    if-eqz v31, :cond_2

    .line 1699
    move-object/from16 v0, v31

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, v31

    .line 1700
    nop

    nop

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1701
    move-object/from16 v0, v32

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1702
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1703
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1704
    .local v28, "grandParent":Landroid/view/ViewParent;
    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/widget/NumberPicker;

    :goto_3
    if-nez v2, :cond_2

    .line 1705
    const/16 v27, 0x1

    .line 1712
    .end local v28    # "grandParent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v25

    .line 1713
    .local v25, "downView":Landroid/view/View;
    if-eqz v25, :cond_3

    .line 1714
    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1716
    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1718
    or-int/lit8 v27, v27, 0x2

    .line 1724
    :cond_3
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 1725
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "flagPrevNext"

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1729
    .end local v25    # "downView":Landroid/view/View;
    .end local v27    # "flagPrevNext":I
    .end local v29    # "parent":Landroid/widget/EditText;
    .end local v31    # "upView":Landroid/view/View;
    :cond_4
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1733
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 1735
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "hasFocus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1739
    :cond_6
    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v2, 0xff0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 1740
    const-string/jumbo v2, "com.sec.android.app.sbrowser"

    iget-object v3, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1739
    if-eqz v2, :cond_7

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1744
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    .line 1748
    :goto_4
    const/4 v9, 0x0

    .line 1749
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

    .line 1763
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1766
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getModeFlag()I

    move-result v12

    .line 1767
    .local v12, "flag":I
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_8

    .line 1769
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 1773
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    invoke-interface {v4}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1774
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    .line 1773
    invoke-interface/range {v2 .. v13}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;IZ)V

    .line 1775
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDirectPenInput "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1779
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Report current DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->registerPositionChangeListener()V

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_9

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1790
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 1791
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    const/16 v30, 0x1

    .line 1862
    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "flag":I
    .end local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_a
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v14, 0x3e8

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1864
    return v30

    .line 1676
    .local v7, "wndRect":Landroid/graphics/Rect;
    .restart local v8    # "scrRect":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_0

    .line 1677
    .local v7, "wndRect":Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1678
    .local v7, "wndRect":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 1680
    .local v7, "wndRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v8

    .local v8, "scrRect":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 1679
    .local v7, "wndRect":Landroid/graphics/Rect;
    .local v8, "scrRect":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_7

    .line 1680
    .local v7, "wndRect":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_8

    .line 1704
    .end local v7    # "wndRect":Landroid/graphics/Rect;
    .end local v8    # "scrRect":Landroid/graphics/Rect;
    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .restart local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v27    # "flagPrevNext":I
    .restart local v28    # "grandParent":Landroid/view/ViewParent;
    .restart local v29    # "parent":Landroid/widget/EditText;
    .restart local v31    # "upView":Landroid/view/View;
    .restart local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1741
    .end local v27    # "flagPrevNext":I
    .end local v28    # "grandParent":Landroid/view/ViewParent;
    .end local v29    # "parent":Landroid/widget/EditText;
    .end local v31    # "upView":Landroid/view/View;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    .line 1742
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    goto/16 :goto_4

    .line 1752
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :cond_12
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1753
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 1754
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 1794
    .restart local v12    # "flag":I
    :catch_0
    move-exception v26

    .line 1795
    .local v26, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 1798
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 1800
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 1802
    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "flag":I
    .end local v26    # "e":Landroid/os/RemoteException;
    .end local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1803
    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1805
    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1806
    .restart local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 1807
    const/4 v2, 0x2

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1811
    :goto_9
    const/4 v2, 0x6

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    if-eqz v2, :cond_14

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    iget-object v3, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;->onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1820
    :cond_14
    const/4 v9, 0x0

    .line 1821
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

    .line 1829
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1830
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1832
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getModeFlag()I

    move-result v12

    .line 1835
    .restart local v12    # "flag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->hideCursorControllers(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1836
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "hideCursorControllers "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    invoke-interface {v2}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 1841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardTemplate:I

    move/from16 v21, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    .line 1840
    invoke-interface/range {v13 .. v24}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 1842
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDirectPenInput. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1846
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Report current DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1850
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 1809
    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v12    # "flag":I
    :cond_16
    const/4 v2, 0x1

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_9

    .line 1824
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :cond_17
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1825
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 1826
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 1851
    .restart local v12    # "flag":I
    :catch_1
    move-exception v26

    .line 1852
    .restart local v26    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 1855
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 1857
    const/4 v2, 0x0

    return v2
.end method

.method private startDirectPenInputService()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2236
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputService()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2238
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2239
    .local v3, "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2241
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.directpeninputservice"

    .line 2242
    const-string/jumbo v6, "com.samsung.android.directpeninputservice.DirectPenInputServiceStarter"

    .line 2241
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2243
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2244
    .local v0, "context":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 2245
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2235
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :cond_1
    :goto_0
    return-void

    .line 2247
    :catch_0
    move-exception v1

    .line 2248
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2251
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2253
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2254
    .restart local v3    # "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2256
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    .line 2257
    const-string/jumbo v6, "com.sec.android.inputmethod.SamsungKeypad"

    .line 2256
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2258
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2259
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    if-eqz v0, :cond_1

    .line 2260
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2262
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_1
    move-exception v1

    .line 2263
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2267
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2268
    .restart local v3    # "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2270
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    .line 2271
    const-string/jumbo v6, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    .line 2270
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2272
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2273
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    if-eqz v0, :cond_1

    .line 2274
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2276
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_2
    move-exception v1

    .line 2277
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private unregisterPositionChangeListener()V
    .locals 3

    .prologue
    .line 2369
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2371
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDPIPositionListenerEnalbed(Z)V

    .line 2368
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2377
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2378
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2379
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2100
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v1, :cond_0

    .line 2101
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    return v0

    .line 2104
    :cond_0
    return v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1049
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Finish DirectPenInput"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 1053
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void

    .line 1056
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    .line 1048
    return-void
.end method

.method public dismiss(Z)V
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 1066
    const-string/jumbo v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorType()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    return v0
.end method

.method public getExpectedTargetDPIRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getTargetDPIRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDPIRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2188
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2189
    return v3

    .line 2192
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    if-eqz v1, :cond_1

    .line 2193
    return v3

    .line 2196
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2197
    .local v0, "action":I
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 2198
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "handleMotionEvent ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    .line 2200
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2201
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->startDirectPenInputService()V

    .line 2208
    :cond_2
    :goto_0
    invoke-direct {p0, v4, v3, p2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v1

    return v1

    .line 2203
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 2204
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "handleMotionEvent ACTION_HOVER_EXIT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2138
    if-nez p1, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v3}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2142
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 2146
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2147
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2148
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2175
    :cond_1
    :goto_0
    return v3

    .line 2161
    :cond_2
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2163
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2164
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v3}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2165
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 2170
    :cond_3
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Update."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 8
    .param p1, "what"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 853
    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPositionChanged code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_8

    .line 856
    const/4 v2, 0x0

    .line 857
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 858
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v6, :cond_3

    .line 859
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 860
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 867
    .local v1, "scrRect":Landroid/graphics/Rect;
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    .line 868
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 869
    :cond_0
    return-void

    .line 859
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 860
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 862
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_3
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 863
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "scrRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 862
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_3

    .line 863
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 872
    .local v1, "scrRect":Landroid/graphics/Rect;
    :cond_6
    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update Position. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_8

    .line 876
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 877
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v6, :cond_8

    .line 878
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    .line 879
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x12c

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_8
    :goto_5
    return-void

    .line 882
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1125
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "receivedClientID"    # I

    .prologue
    .line 1216
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResultReceived "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " receivedClientID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1217
    const-string/jumbo v8, " current ClientID : "

    .line 1216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1217
    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-nez p1, :cond_0

    .line 1220
    return-void

    .line 1223
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 1224
    return-void

    .line 1228
    :cond_1
    const-string/jumbo v6, "service_cb_client_changed"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    .line 1229
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_4

    .line 1233
    iget-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v6, :cond_2

    .line 1234
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 1235
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 1238
    :cond_2
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1239
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 1240
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    .line 1244
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    .line 1245
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1249
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1250
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1251
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Report current DPI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    .line 1255
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    .line 1259
    :cond_6
    const-string/jumbo v6, "service_cb_inflate_done"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 1260
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 1265
    :cond_7
    const-string/jumbo v6, "service_cb_writing_done"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1266
    .local v5, "resultValue":I
    if-lez v5, :cond_a

    .line 1267
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResultReceived SERVICE_CB_WRITING_DONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 1271
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_a

    .line 1273
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_10

    const/4 v2, 0x1

    .line 1274
    .local v2, "isShown":Z
    :goto_0
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_8

    .line 1275
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v2

    .line 1278
    :cond_8
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v6, :cond_9

    if-eqz v2, :cond_9

    .line 1279
    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    const/4 v1, 0x1

    .line 1280
    .local v1, "initBuffer":Z
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    .line 1284
    .end local v1    # "initBuffer":Z
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    .line 1285
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1290
    .end local v2    # "isShown":Z
    :cond_a
    const-string/jumbo v6, "service_cb_perform_editor_action"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1291
    .local v0, "editorAction":I
    if-ltz v0, :cond_c

    .line 1292
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b

    .line 1293
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResultReceived SERVICE_CB_DATA_CHANGED "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    .line 1295
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->performDPIEditorAction(I)V

    .line 1296
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    .line 1300
    :cond_b
    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendActionButtonResult(I)V

    .line 1304
    :cond_c
    const-string/jumbo v6, "service_cb_closed"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e

    .line 1305
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string/jumbo v6, "service_cb_init_text"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1308
    .local v3, "modifedText":Ljava/lang/CharSequence;
    const-string/jumbo v6, "service_cb_closed"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1310
    .local v4, "modifyBuffer":I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    .line 1311
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    .line 1315
    :cond_d
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 1318
    const-string/jumbo v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1321
    const-string/jumbo v6, "CLOSED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 1325
    .end local v3    # "modifedText":Ljava/lang/CharSequence;
    .end local v4    # "modifyBuffer":I
    :cond_e
    const-string/jumbo v6, "service_cb_private"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f

    .line 1327
    const-string/jumbo v6, "service_cb_private"

    invoke-direct {p0, v6, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 1214
    :cond_f
    return-void

    .line 1273
    .end local v0    # "editorAction":I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1279
    .restart local v2    # "isShown":Z
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "initBuffer":Z
    goto/16 :goto_1
.end method

.method public onTextDeleted(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 1189
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextDeleted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_6

    .line 1192
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1193
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1194
    const-string/jumbo v4, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextDeleted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_1
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 1197
    check-cast v0, Landroid/text/Editable;

    .line 1198
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    if-ge v2, v3, :cond_3

    .line 1199
    return-void

    .end local v0    # "editable":Landroid/text/Editable;
    :cond_2
    move-object v2, v3

    .line 1194
    goto :goto_0

    .line 1200
    .restart local v0    # "editable":Landroid/text/Editable;
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, p2, :cond_4

    .line 1201
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextDeleted() : end is out of bound textBuffer length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void

    .line 1204
    :cond_4
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1207
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_5
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1187
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_6
    return-void
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 7
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "nextCursor"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1138
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1139
    const-string/jumbo v4, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1143
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v2, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    .line 1139
    goto :goto_0

    .line 1150
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 1151
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1152
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1153
    const-string/jumbo v2, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_5
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 1156
    check-cast v0, Landroid/text/Editable;

    .line 1157
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 1158
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : where is out of bound editor length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void

    .line 1160
    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, p3, :cond_7

    .line 1161
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int p3, v2, v3

    .line 1162
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : nextCursor position is more than total text length, set nextCursor to end of text"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_7
    if-eqz p2, :cond_8

    .line 1165
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1166
    invoke-static {v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1171
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1172
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1176
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1177
    const-string/jumbo v2, "TEXT_INSERTED"

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1136
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_a
    return-void
.end method

.method public onUpdateDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1336
    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUpdateDialog code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_1

    .line 1338
    const/4 v2, 0x0

    .line 1339
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1340
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v7, :cond_4

    .line 1341
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1342
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1348
    .local v1, "scrRect":Landroid/graphics/Rect;
    :goto_2
    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update onUpdateDialog. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_1

    .line 1352
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    :goto_3
    return-void

    .line 1341
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1342
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 1344
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1345
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "scrRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 1344
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 1345
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_5

    .line 1354
    .local v1, "scrRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    .line 804
    return-void
.end method

.method public setBoardTemplate(I)V
    .locals 0
    .param p1, "template"    # I

    .prologue
    .line 845
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardTemplate:I

    .line 844
    return-void
.end method

.method public setBoardType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 703
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The board type should be one of TYPE_BOARD_EDITOR or TYPE_BOARD_TEMPLATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    .line 702
    return-void
.end method

.method public setEditorType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 816
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    .line 815
    return-void
.end method

.method public setImageWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    .line 762
    return-void
.end method

.method public setImageWritingListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

    .prologue
    .line 939
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setImageWritingEnabled(Z)V

    .line 941
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mImageWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

    .line 937
    return-void

    .line 939
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMathWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMathWritingEnabled:Z

    .line 774
    return-void
.end method

.method public setOnButtonClickListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    .prologue
    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    .line 797
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    .line 795
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 682
    if-nez p1, :cond_0

    .line 683
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    .line 686
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    .line 687
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 688
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 689
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    .line 681
    :goto_0
    return-void

    .line 691
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public setServiceEventListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    .prologue
    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    .line 786
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    .line 784
    return-void
.end method

.method public setTextUpdateListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    .line 951
    return-void
.end method

.method public setTextWritingListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    .line 927
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    return v0
.end method

.method public showAsDialog()Z
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x0

    return v0
.end method

.method public showPopup()V
    .locals 4

    .prologue
    .line 1022
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v1, 0x0

    .line 1026
    .local v1, "style":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v2, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->showPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Can not start showPopup, RemoteException happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDirectPenInputServiceByForce()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2289
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputService()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2291
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2292
    .local v3, "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2294
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.directpeninputservice"

    .line 2295
    const-string/jumbo v6, "com.samsung.android.directpeninputservice.DirectPenInputServiceStarter"

    .line 2294
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2296
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2297
    .local v0, "context":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 2298
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :cond_1
    :goto_0
    return-void

    .line 2300
    :catch_0
    move-exception v1

    .line 2301
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2305
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2306
    .restart local v3    # "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2308
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    .line 2309
    const-string/jumbo v6, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    .line 2308
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2310
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2311
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    if-eqz v0, :cond_1

    .line 2312
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2314
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_1
    move-exception v1

    .line 2315
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
