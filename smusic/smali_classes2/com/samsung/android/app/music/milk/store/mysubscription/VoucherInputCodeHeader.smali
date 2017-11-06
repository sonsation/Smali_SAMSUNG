.class public Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;
.super Ljava/lang/Object;
.source "VoucherInputCodeHeader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mOnInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

.field private mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mFragment:Landroid/app/Fragment;

    .line 27
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mOnInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->initLayout()V

    .line 30
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019d

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mOnInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->setInputVoucherListener(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public build()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    return-object v0
.end method

.method public initVoucherCode()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->setVoucherCode(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->showKeypad(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public setVoucherCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->setVoucherCode(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public showKeypad(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->mRootView:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->showKeypad(Z)V

    .line 54
    :cond_0
    return-void
.end method
