.class public Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;
.super Landroid/app/Dialog;
.source "EdgeLightingDialog.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/IEdgeLightingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;,
        Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

.field private mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

.field private mDialogMain:Landroid/widget/RelativeLayout;

.field private mDozeDraw:Z

.field mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

.field private mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

.field mHandler:Landroid/os/Handler;

.field private mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

.field private mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

.field private mTransparent:Z

.field private mUsingBlackBG:Z

.field private mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mTransparent:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDozeDraw:Z

    .line 58
    const/16 v0, 0x8b4

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowType:I

    .line 62
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    .line 443
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mTransparent:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDozeDraw:Z

    .line 58
    const/16 v0, 0x8b4

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowType:I

    .line 62
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    .line 443
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    .line 79
    iput p2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowType:I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->dismissInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->selfDismissWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mTransparent:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;Landroid/view/Window;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;
    .param p1, "x1"    # Landroid/view/Window;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    return-void
.end method

.method private applyWindowAttribute(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    const/4 v2, -0x1

    .line 377
    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowType:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 379
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 381
    const v1, 0x1000500

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 387
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 389
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 391
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x600

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 393
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 394
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 395
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 396
    const-string v1, "EdgeLightingWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method private callSuperDismiss()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 401
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 402
    return-void
.end method

.method private dismissInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 413
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 415
    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 418
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_1

    .line 441
    :goto_0
    return-void

    .line 421
    :cond_1
    sget-object v1, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string v2, "dismissInternal "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 424
    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    if-eqz v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 428
    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    if-eqz v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 433
    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    .line 436
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    if-eqz v1, :cond_5

    .line 437
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 438
    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    .line 440
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->callSuperDismiss()V

    goto :goto_0
.end method

.method private initApplicationView()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 189
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    .line 199
    :cond_1
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->setOnDialogListener(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 207
    :cond_2
    return-void
.end method

.method private initEdgeToastView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 168
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    .line 175
    :cond_1
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->setOnDialogListener(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 185
    :cond_2
    return-void
.end method

.method private initNotificationView()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 149
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .line 156
    :cond_1
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setOnDialogListener(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 164
    :cond_2
    return-void
.end method

.method private initPreviewView()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 211
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    .line 219
    :cond_1
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->setOnDialogListener(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 226
    :cond_2
    return-void
.end method

.method private selfDismissWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 405
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 410
    return-void
.end method

.method private setApplicationInfo(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->setAppEdgeEffectInfo(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V

    .line 234
    return-void
.end method

.method private setApplicationInfo([I)V
    .locals 1
    .param p1, "effectColors"    # [I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->setEffectColors([I)V

    .line 238
    return-void
.end method

.method private setEdgeToastInfo(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeToastInfo;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->setToastInfo(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V

    .line 242
    return-void
.end method

.method private setNotificationInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setNotificationInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V

    .line 230
    return-void
.end method

.method private updateBackground(Landroid/view/Window;)V
    .locals 11
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    const/high16 v10, 0x40000

    const/4 v4, 0x1

    const/high16 v9, -0x1000000

    const/4 v8, -0x3

    const/4 v5, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 116
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 117
    .local v1, "isInteractive":Z
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    invoke-virtual {v6}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 118
    .local v0, "isAOD":Z
    :goto_0
    iget-boolean v6, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    if-eqz v6, :cond_1

    .line 119
    sget-object v4, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateBackground : OPAQUE(usingBlack)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1, v8}, Landroid/view/Window;->setFormat(I)V

    .line 121
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    iput-boolean v5, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mTransparent:Z

    .line 134
    :goto_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 135
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    if-eqz v4, :cond_4

    .line 136
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 140
    :goto_2
    iget-boolean v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDozeDraw:Z

    if-eqz v4, :cond_5

    .line 141
    invoke-virtual {v2, v10}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 145
    :goto_3
    return-void

    .end local v0    # "isAOD":Z
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move v0, v5

    .line 117
    goto :goto_0

    .line 123
    .restart local v0    # "isAOD":Z
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    sget-object v6, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateBackground : TRANSPARENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1, v8}, Landroid/view/Window;->setFormat(I)V

    .line 126
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    iput-boolean v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mTransparent:Z

    goto :goto_1

    .line 129
    :cond_3
    sget-object v4, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateBackground : OPAQUE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1, v8}, Landroid/view/Window;->setFormat(I)V

    .line 131
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    iput-boolean v5, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mTransparent:Z

    goto :goto_1

    .line 138
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v2, v10}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/samsung/android/edgelighting/R$layout;->edge_light_main:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->applyWindowAttribute(Landroid/view/Window;)V

    .line 87
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 88
    return-void
.end method

.method public refreshBackground()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    .line 112
    :cond_0
    return-void
.end method

.method public registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    .line 305
    :cond_0
    return-void
.end method

.method public setDozeDrawMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mDozeDraw:Z

    .line 298
    return-void
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowType:I

    .line 293
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    .line 97
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 98
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show  version : 1.4.10"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    return-void
.end method

.method public showPreview(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->show()V

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->initPreviewView()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->setPreviewInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->show()V

    .line 337
    return-void
.end method

.method public startApplication(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->show()V

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->initApplicationView()V

    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->setApplicationInfo(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->show()V

    .line 328
    return-void
.end method

.method public startApplication([I)V
    .locals 1
    .param p1, "effectColors"    # [I

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->show()V

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->initApplicationView()V

    .line 317
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->setApplicationInfo([I)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->show()V

    .line 319
    return-void
.end method

.method public startEdgeEffect(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->show()V

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->initNotificationView()V

    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->setNotificationInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->show()V

    .line 252
    return-void
.end method

.method public startEdgeToast(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeToastInfo;

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->show()V

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->initEdgeToastView()V

    .line 259
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->setEdgeToastInfo(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->show()V

    .line 261
    return-void
.end method

.method public stopApplication()V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->dismiss()V

    .line 345
    :cond_0
    return-void
.end method

.method public stopEdgeEffect()V
    .locals 2

    .prologue
    .line 349
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopEdgeEffect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->dismiss()V

    .line 353
    :cond_0
    return-void
.end method

.method public stopEdgeToast()V
    .locals 2

    .prologue
    .line 357
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopEdgeToast"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->dismiss()V

    .line 361
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->dismiss()V

    .line 368
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$2;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    return-void
.end method

.method public unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    .line 310
    return-void
.end method

.method public updatePreview(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->updatePreviewInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V

    .line 288
    :cond_0
    return-void
.end method

.method public updateText(Landroid/graphics/drawable/Drawable;[Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # [Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateNotification not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0, p2, p1, p3}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setNotificationInfo([Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->updateText()V

    goto :goto_0
.end method

.method public updateToastText(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeToastInfo;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateNotification not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->setToastInfo(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->mEdgeToastContainer:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->updateText()V

    goto :goto_0
.end method
