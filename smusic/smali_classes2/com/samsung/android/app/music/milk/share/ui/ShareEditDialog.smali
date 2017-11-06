.class public Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "ShareEditDialog.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverArt:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mCoverArtLoader:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

.field private mCoverArtUrl:Ljava/lang/String;

.field private mEditView:Landroid/widget/EditText;

.field private mIsKeypadShownOnPause:Z

.field private mMessage:Ljava/lang/String;

.field private mNegaBtnClickListnr:Landroid/view/View$OnClickListener;

.field private mPosBtnClickListnr:Landroid/view/View$OnClickListener;

.field private mShareItem:I

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mPosBtnClickListnr:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mNegaBtnClickListnr:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArtLoader:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "shareItem"    # I
    .param p2, "text1"    # Ljava/lang/String;
    .param p3, "text2"    # Ljava/lang/String;
    .param p4, "coverArtUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mPosBtnClickListnr:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mNegaBtnClickListnr:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArtLoader:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    .line 69
    iput p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mShareItem:I

    .line 70
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mText1:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mText2:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArtUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mNegaBtnClickListnr:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArt:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method private initLayout(Landroid/app/Dialog;)V
    .locals 9
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v8, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mTitleView:Landroid/widget/TextView;

    .line 116
    const v4, 0x7f0400dd

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getCustomizedView(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 117
    .local v0, "customView":Landroid/view/ViewGroup;
    const v4, 0x7f120295

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    .line 119
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->setEditTextMaxLength()V

    .line 121
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 124
    const v4, 0x7f120297

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArt:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 125
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArt:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mCoverArtUrl:Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 127
    const v4, 0x7f120298

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mText1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mText2:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 129
    const v4, 0x7f120299

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "view":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mText2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    .end local v3    # "view":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v1

    .line 135
    .local v1, "negBtn":Landroid/widget/Button;
    const v4, 0x7f0a0363

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 136
    new-instance v4, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    .line 148
    .local v2, "posBtn":Landroid/widget/Button;
    const v4, 0x7f0a040e

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mPosBtnClickListnr:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method private isCursorVisible()Z
    .locals 2

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    .line 229
    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInputMethodShown()Z
    .locals 6

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 201
    .local v2, "isShown":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    .line 202
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 208
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInputMethodShown : Exception is happened isShown("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEditTextMaxLength()V
    .locals 5

    .prologue
    .line 173
    iget v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mShareItem:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x5c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 176
    :cond_0
    return-void
.end method

.method private showKeypad(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 215
    if-eqz p1, :cond_1

    .line 216
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onAttach(Landroid/app/Activity;)V

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 79
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getMessageDivider()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->initLayout(Landroid/app/Dialog;)V

    .line 86
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->showKeypad(Z)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->setRetainInstance(Z)V

    .line 91
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->isInputMethodShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mIsKeypadShownOnPause:Z

    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mIsKeypadShownOnPause:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->showKeypad(Z)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onPause()V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mEditView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->isCursorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mIsKeypadShownOnPause:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->showKeypad(Z)V

    .line 111
    :cond_1
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mMessage:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "lstnr"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mNegaBtnClickListnr:Landroid/view/View$OnClickListener;

    .line 154
    return-void
.end method

.method public setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "lstnr"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mPosBtnClickListnr:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->mTitle:Ljava/lang/String;

    .line 162
    return-void
.end method
