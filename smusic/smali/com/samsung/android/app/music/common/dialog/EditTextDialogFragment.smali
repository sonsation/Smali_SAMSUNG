.class public abstract Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "EditTextDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;


# static fields
.field private static final DEFAULT_PLAYLIST_ID:I = -0x1

.field private static final DISABLE_EMOTICON_FLAG:Ljava/lang/String; = "disableEmoticonInput=true"

.field private static final DISABLE_PREDICTION_FLAG:Ljava/lang/String; = "inputType=PredictionOff"

.field private static final DISABLE_SYMBLE_FLAG:Ljava/lang/String; = "inputType=filename"

.field private static final ERROR_ALREADY_IN_USED:I = 0x4

.field private static final ERROR_INVALID_CHARACTER:I = 0x2

.field private static final ERROR_MAX_LENGTH:I = 0x1

.field private static final MAX_LENGTH_OF_PLAYLIST_NAME:I = 0x32

.field private static final PATTERN_SPECIAL_CHARACTERS:Ljava/util/regex/Pattern;

.field private static final SAVED_INSTANCE_STATE_ERROR_MESSAGE:Ljava/lang/String; = "saved_instance_state_error_message"

.field private static final SAVED_INSTANCE_STATE_ID_ERROR_MESSAGE:Ljava/lang/String; = "saved_instance_state_id_error_message"

.field private static final SAVED_INSTANCE_STATE_KEYBOARD_VISIBLE:Ljava/lang/String; = "saved_instance_state_keyboard_visible"

.field private static final TAG:Ljava/lang/String;

.field private static final USE_FLOATING_ERROR:Z = true


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;

.field private mEditText:Landroid/widget/EditText;

.field private mInitialMessage:Ljava/lang/String;

.field private mIsKeyboardVisible:Z

.field private mKeyboardIntentFilter:Landroid/content/IntentFilter;

.field private final mKeyboardReceiver:Landroid/content/BroadcastReceiver;

.field private mLastErrorCode:I

.field private mLastErrorMessage:Ljava/lang/CharSequence;

.field private mReceiveTime:J

.field private mRecreatedErrorCode:I

.field private mShowSIP:Ljava/lang/Runnable;

.field private final mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mTextInputLayout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    .line 83
    const-string v0, "[\\*/\\\\\\?:<>\\|\"]+"

    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->PATTERN_SPECIAL_CHARACTERS:Ljava/util/regex/Pattern;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    .line 106
    iput v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mLastErrorCode:I

    .line 108
    iput v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mRecreatedErrorCode:I

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$1;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$2;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$5;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mShowSIP:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mReceiveTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mShowSIP:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mLastErrorCode:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mLastErrorCode:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mRecreatedErrorCode:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mLastErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->PATTERN_SPECIAL_CHARACTERS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private initDescriptionText(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 440
    const v0, 0x7f1201af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mDescriptionText:Landroid/widget/TextView;

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onSetDescriptionResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onSetDescriptionResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mDescriptionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mDescriptionText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEditText(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 326
    .local v1, "toast":Landroid/widget/Toast;
    const v2, 0x7f12010a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onSetEditTextInitialMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mInitialMessage:Ljava/lang/String;

    .line 328
    const v2, 0x7f1201b0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mInitialMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 331
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 335
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 336
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v3, "inputType=PredictionOff;disableEmoticonInput=true;inputType=filename"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$9;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 366
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    new-array v3, v4, [Landroid/text/InputFilter;

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;

    const/16 v5, 0x32

    invoke-direct {v4, p0, v5, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;ILandroid/widget/Toast;)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 423
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$11;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 437
    return-void
.end method


# virtual methods
.method protected getEditTextMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 514
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEditTextMessage() - msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-object v0
.end method

.method public getInitialMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mInitialMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPlaylistId(Ljava/lang/String;)I
    .locals 8
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v6, 0x0

    .line 493
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 495
    .local v7, "id":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "name=? COLLATE NOCASE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "name"

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 499
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 505
    :cond_0
    if-eqz v6, :cond_1

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistId() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playlistName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return v7

    .line 505
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getTextInputLayout()Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method public isInvalidMessage()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onClickNegativeButton()V
.end method

.method protected abstract onClickPositiveButton()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.music.TAB_SETTING_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 131
    sget-object v3, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateDialog() - savedInstanceState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string/jumbo v3, "saved_instance_state_id_error_message"

    const/4 v4, -0x1

    .line 134
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mRecreatedErrorCode:I

    .line 135
    const-string/jumbo v3, "saved_instance_state_keyboard_visible"

    .line 136
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    .line 137
    const-string/jumbo v3, "saved_instance_state_error_message"

    .line 138
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mLastErrorMessage:Ljava/lang/CharSequence;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040065

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "rootView":Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 143
    check-cast v3, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;->setOnWindowFocusChangeListener(Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;)V

    .line 157
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onSetTitleResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onSetPositiveButtonResId()I

    move-result v4

    new-instance v5, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$4;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a008a

    .line 166
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->initEditText(Landroid/view/View;)V

    .line 169
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->initDescriptionText(Landroid/view/View;)V

    .line 170
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 173
    return-object v1
.end method

.method protected abstract onCreateRenamePlaylistName(Ljava/lang/String;)Z
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onDestroy()V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 307
    sget-object v0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mReceiveTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onPause()V

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 208
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onResume()V

    .line 209
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onResume()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/app/Activity;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 215
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardIntentFilter:Landroid/content/IntentFilter;

    if-nez v2, :cond_1

    .line 220
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardIntentFilter:Landroid/content/IntentFilter;

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mKeyboardIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    if-eqz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mShowSIP:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 232
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    if-nez v1, :cond_4

    .line 233
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->TAG:Ljava/lang/String;

    const-string v3, "null is returned by getDialog()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->dismiss()V

    .line 303
    :cond_3
    :goto_0
    return-void

    .line 238
    :cond_4
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    .line 239
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;Landroid/app/AlertDialog;)V

    .line 268
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->updatePositiveButton(Ljava/lang/String;)V

    .line 277
    iget v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mRecreatedErrorCode:I

    if-eq v2, v6, :cond_3

    .line 278
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;-><init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 276
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 526
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    .line 527
    .local v0, "error":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 528
    const-string/jumbo v1, "saved_instance_state_error_message"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 529
    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    .line 528
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 530
    const-string/jumbo v1, "saved_instance_state_id_error_message"

    iget v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mLastErrorCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    :cond_0
    const-string/jumbo v1, "saved_instance_state_keyboard_visible"

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mIsKeyboardVisible:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 534
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method protected onSetDescriptionResId()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract onSetEditTextInitialMessage()Ljava/lang/String;
.end method

.method protected onSetPositiveButtonResId()I
    .locals 1

    .prologue
    .line 520
    const v0, 0x7f0a0146

    return v0
.end method

.method protected abstract onSetTitleResId()I
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onStart()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->dismiss()V

    .line 204
    :cond_0
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 470
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_0
    return-void
.end method

.method protected updatePositiveButton(Ljava/lang/String;)V
    .locals 7
    .param p1, "editText"    # Ljava/lang/String;

    .prologue
    .line 478
    const/4 v1, 0x1

    .line 479
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 480
    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, ""

    .line 481
    .local v0, "currentError":Ljava/lang/String;
    :goto_0
    const v4, 0x7f0a0152

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "nameExist":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 483
    .local v2, "isNameExist":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_1

    .line 484
    :cond_0
    const/4 v1, 0x0

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    instance-of v4, v4, Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 489
    :cond_2
    return-void

    .line 480
    .end local v0    # "currentError":Ljava/lang/String;
    .end local v2    # "isNameExist":Z
    .end local v3    # "nameExist":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
