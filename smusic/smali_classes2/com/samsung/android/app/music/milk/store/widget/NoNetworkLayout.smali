.class public Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
.super Landroid/widget/RelativeLayout;
.source "NoNetworkLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;,
        Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoNetworkLayout"


# instance fields
.field private mCachedLayout:Landroid/view/View;

.field private mConnectionFailed:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mController:Lcom/samsung/android/app/music/network/NetworkManager;

.field private mEnteredLayout:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoRefreshWhenFailToEnter:Z

.field private mLoadingRunnable:Ljava/lang/Runnable;

.field private mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

.field private mNetworkSettings:Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;

.field private mNetworkSettings2:Landroid/view/View;

.field private mProgressLayout:Landroid/view/View;

.field private mRetryListener:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

.field private mRootView:Landroid/view/View;

.field private mScreenID:Ljava/lang/String;

.field private mTryAgainBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->_initialize(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->_initialize(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->_initialize(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->_initialize(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private _initialize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400da

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRootView:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0, v5, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->addView(Landroid/view/View;II)V

    .line 174
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setClickable(Z)V

    .line 177
    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRetryListener:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    .line 178
    const v0, 0x7f12027f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    .line 179
    const v0, 0x7f120283

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 181
    const v0, 0x7f120280

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mConnectionFailed:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f120282

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings:Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings:Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f1202ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings2:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f120281

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_0
    const v0, 0x7f1201ff

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mProgressLayout:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mProgressLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mHandler:Landroid/os/Handler;

    .line 248
    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mProgressLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mLoadingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mLoadingRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    return-object v0
.end method

.method private retry()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRetryListener:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRetryListener:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;->onRetry()V

    .line 410
    :cond_0
    return-void
.end method

.method private setLinkText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 155
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v0, "spanString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    const v2, 0x7f1202ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method private showErrorToast(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mController:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 290
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mController:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 291
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRetryListener:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    .line 292
    return-void
.end method

.method public getMode()Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    .line 379
    return-void
.end method

.method public initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V
    .locals 2
    .param p1, "controller"    # Lcom/samsung/android/app/music/network/NetworkManager;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
    .param p3, "contentView"    # Landroid/view/View;
    .param p4, "isAutoRefreshWhenFailToEnter"    # Z

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should add controller !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    if-nez p3, :cond_1

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should add content view. if enter mode is shown, content view is hidden !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mController:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 277
    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 278
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 279
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mRetryListener:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    .line 280
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mContentView:Landroid/view/View;

    .line 281
    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mIsAutoRefreshWhenFailToEnter:Z

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_2
    return-void
.end method

.method public initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "controller"    # Lcom/samsung/android/app/music/network/NetworkManager;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
    .param p3, "contentView"    # Landroid/view/View;
    .param p4, "isAutoRefreshWhenFailToEnter"    # Z
    .param p5, "enableTryAgainBtn"    # Z
    .param p6, "screenID"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    if-eqz p5, :cond_1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_0
    :goto_0
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    .line 263
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 298
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 301
    :sswitch_0
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveSettings(Landroid/content/Context;)V

    .line 302
    const-string v2, "963"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x0

    .line 304
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    const-string v4, "9742"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    const-string v4, "9744"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x7f120282 -> :sswitch_0
        0x7f1202ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 10
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v9, 0x7f120282

    const v8, 0x7f120280

    const v7, 0x7f0a0381

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 92
    const-string v2, "NoNetworkLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNetworkStateChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v2, v3, :cond_4

    .line 94
    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v2, :cond_3

    .line 97
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0309

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "linkText":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setLinkText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    goto :goto_0

    .line 106
    .end local v1    # "linkText":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1    # "linkText":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setLinkText(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    goto :goto_0

    .line 111
    .end local v1    # "linkText":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v2, v3, :cond_0

    .line 112
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mIsAutoRefreshWhenFailToEnter:Z

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v2, :cond_5

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->retry()V

    goto :goto_0

    .line 117
    :cond_5
    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v2, :cond_9

    .line 118
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mTryAgainBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 119
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->retry()V

    goto :goto_0

    .line 121
    :cond_7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "mobile_data"

    .line 122
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 123
    const-string v2, "NoNetworkLayout"

    const-string v3, "onNetworkStateChanged : Wifi Off , Mobile On retry"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->retry()V

    goto/16 :goto_0

    .line 126
    :cond_8
    const-string v2, "NoNetworkLayout"

    const-string v3, "onNetworkStateChanged : Wifi Off , Mobile On but mobile use setting is Off"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a04ac

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a04ab

    .line 131
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const-string v2, "963"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    .line 134
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_9
    const-string v2, "963"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mScreenID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 144
    :cond_a
    const-string v2, "NoNetworkLayout"

    const-string v3, "onNetworkStateChanged : All Network is off"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0444

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 318
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v2, v3, :cond_0

    .line 319
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mContentView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 326
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mConnectionFailed:Landroid/widget/TextView;

    .line 328
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0382

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    new-instance v1, Landroid/text/SpannableString;

    .line 331
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0309

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 332
    .local v1, "spanString":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 333
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings:Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .end local v1    # "spanString":Landroid/text/SpannableString;
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    .line 345
    return-void

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mConnectionFailed:Landroid/widget/TextView;

    .line 337
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0380

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v1, Landroid/text/SpannableString;

    .line 339
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0381

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 340
    .restart local v1    # "spanString":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mNetworkSettings:Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public show(II)V
    .locals 3
    .param p1, "rspCode"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v2, 0x4

    .line 352
    packed-switch p1, :pswitch_data_0

    .line 359
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show()V

    .line 370
    :goto_0
    return-void

    .line 354
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a040d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v0, v1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    .line 369
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->showErrorToast(I)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 382
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$2;->$SwitchMap$com$samsung$android$app$music$milk$store$widget$NoNetworkLayout$NoNetworkMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 400
    return-void

    .line 384
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mMode:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mIsAutoRefreshWhenFailToEnter:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mCachedLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->mEnteredLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
