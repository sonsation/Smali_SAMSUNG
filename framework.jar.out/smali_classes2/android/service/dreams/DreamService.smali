.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanDoze:Z

.field private mDebug:Z

.field private mDozeScreenBrightness:I

.field private mDozeScreenMode:I

.field private mDozeScreenState:I

.field private mDozing:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private final mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mStarted:Z

.field private mWaking:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWindowless:Z


# direct methods
.method static synthetic -get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/dreams/DreamService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    return v0
.end method

.method static synthetic -get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/dreams/DreamService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method static synthetic -set0(Landroid/service/dreams/DreamService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/service/dreams/DreamService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/service/dreams/DreamService;Z)V
    .locals 0
    .param p1, "fromSystem"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    .line 181
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 183
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 190
    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 192
    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    .line 194
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 197
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    .line 196
    return-void
.end method

.method private applyFlags(III)I
    .locals 2
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1087
    not-int v0, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/4 v0, 0x0

    .line 1080
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    .line 1081
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1079
    :cond_0
    return-void

    .line 1080
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private applyWindowFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1066
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1068
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1069
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1070
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private final attach(Landroid/os/IBinder;Z)V
    .locals 12
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    .prologue
    const/16 v11, 0x7e7

    const/4 v10, -0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 969
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    .line 970
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attach() called when already attached with token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void

    .line 973
    :cond_0
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v3, :cond_2

    .line 974
    :cond_1
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attach() called after dream already finished"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :try_start_0
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 980
    :goto_0
    return-void

    .line 983
    :cond_2
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 984
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 985
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v3, :cond_7

    .line 988
    :cond_3
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v3, :cond_6

    .line 989
    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 990
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 991
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 992
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    .line 995
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Attaching window token: %s to window of type %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 996
    aput-object p1, v7, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 995
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_4
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 999
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1000
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1001
    const v3, 0x10302f8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1002
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1007
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x400

    .line 1002
    :goto_1
    const v7, 0x490101

    or-int/2addr v7, v3

    .line 1008
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x80

    .line 1002
    :goto_2
    or-int/2addr v3, v7

    or-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1010
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1011
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const-string/jumbo v6, "dream"

    invoke-virtual {v3, v9, p1, v6, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 1014
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v3, :cond_a

    move v3, v5

    .line 1013
    :goto_3
    invoke-direct {p0, v3, v5}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 1017
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v3, :cond_5

    .line 1018
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1019
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v10}, Landroid/view/Window;->setFormat(I)V

    .line 1021
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1022
    const/16 v3, 0x96a

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1023
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1024
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1025
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1026
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1027
    const/16 v3, 0x802

    .line 1028
    const/16 v4, 0x802

    .line 1027
    invoke-direct {p0, v3, v4}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 1029
    const/high16 v3, 0x1600000

    .line 1030
    const/high16 v4, 0x1600000

    .line 1029
    invoke-direct {p0, v3, v4}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 1034
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1049
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/service/dreams/DreamService$1;

    invoke-direct {v4, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void

    .line 986
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Only doze dreams can be windowless"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move v3, v4

    .line 1007
    goto/16 :goto_1

    :cond_9
    move v3, v4

    .line 1008
    goto/16 :goto_2

    :cond_a
    move v3, v4

    .line 1014
    goto :goto_3

    .line 1035
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "ex":Landroid/view/WindowManager$BadTokenException;
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attach() called after window token already removed, dream will finish soon"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iput-object v9, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1042
    return-void

    .line 977
    .end local v1    # "ex":Landroid/view/WindowManager$BadTokenException;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1125
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private final detach()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 939
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    if-eqz v0, :cond_1

    .line 940
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    iput-boolean v5, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 942
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 945
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_3

    .line 947
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "detach(): Removing window from window manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_2
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 949
    iput-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 952
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 954
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 955
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Dream"

    .line 954
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iput-object v4, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 957
    iput-boolean v5, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 938
    :cond_4
    return-void
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .locals 3
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1075
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v2, :cond_0

    .line 1076
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .end local p2    # "defaultValue":Z
    :goto_1
    return p2

    .line 1075
    .end local v0    # "v":Landroid/view/View;
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1076
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    goto :goto_1
.end method

.method private getWindowFlagValue(IZ)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1062
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private updateDoze()V
    .locals 6

    .prologue
    .line 633
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v1, :cond_0

    .line 635
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    iget v5, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/service/dreams/IDreamManager;->semStartDozing(Landroid/os/IBinder;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private wakeUp(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 892
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wakeUp(): fromSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 893
    const-string/jumbo v3, ", mWaking="

    .line 892
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 893
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 892
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 893
    const-string/jumbo v3, ", mFinished="

    .line 892
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 893
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 892
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v1, :cond_2

    .line 891
    :cond_1
    :goto_0
    return-void

    .line 896
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 901
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    .line 905
    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v1, :cond_1

    .line 906
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_3

    .line 907
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WakeUp was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 911
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    return-void
.end method

.method public canDoze()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 263
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 212
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 213
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on keyEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 215
    return v2

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 217
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on back key"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 219
    return v2

    .line 221
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 228
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 241
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on touchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 252
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 254
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    .line 1092
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1091
    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 1104
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    const-string/jumbo v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isLowProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " lowprofile"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1118
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    :cond_6
    return-void

    .line 1106
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    :cond_8
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final finish()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 861
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finish(): mFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v1, :cond_1

    .line 864
    iput-boolean v4, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 866
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    .line 867
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Finish was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    .line 860
    :cond_1
    return-void

    .line 870
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDozeScreenBrightness()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public getDozeScreenState()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public isLowProfile()Z
    .locals 2

    .prologue
    .line 514
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getSystemUiVisibilityFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isScreenBright()Z
    .locals 2

    .prologue
    .line 561
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isWindowless()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 368
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 363
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 849
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 809
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 808
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 922
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 928
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 921
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 817
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 826
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/SearchEvent;

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWakeUp()V
    .locals 0

    .prologue
    .line 843
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 842
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 308
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 318
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public semSetDozeScreenBrightness(II)V
    .locals 2
    .param p1, "dozeMode"    # I
    .param p2, "brightness"    # I

    .prologue
    .line 787
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 788
    invoke-static {p2}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p2

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 791
    .local v0, "needToUpdateDoze":Z
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v1, p2, :cond_1

    .line 792
    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 793
    const/4 v0, 0x1

    .line 795
    :cond_1
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    if-eq v1, p1, :cond_2

    .line 796
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    .line 797
    const/4 v0, 0x1

    .line 799
    :cond_2
    if-eqz v0, :cond_3

    .line 800
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 786
    :cond_3
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 404
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 420
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 203
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 774
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 775
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    .line 777
    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_1

    .line 778
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 779
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 773
    :cond_1
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 725
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-eq v0, p1, :cond_0

    .line 726
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 727
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 724
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 525
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v1, p1, :cond_0

    .line 526
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 527
    const/16 v0, 0x400

    .line 528
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_1

    .line 527
    const/16 v1, 0x400

    .line 528
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 524
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 528
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 478
    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2
    .param p1, "lowProfile"    # Z

    .prologue
    .line 500
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eq v1, p1, :cond_0

    .line 501
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 502
    const/4 v0, 0x1

    .line 503
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v1, :cond_1

    .line 502
    const/4 v1, 0x1

    .line 503
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 499
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 503
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenBright(Z)V
    .locals 2
    .param p1, "screenBright"    # Z

    .prologue
    .line 547
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v1, p1, :cond_0

    .line 548
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 549
    const/16 v0, 0x80

    .line 550
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_1

    .line 549
    const/16 v1, 0x80

    .line 550
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 546
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 550
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWindowless(Z)V
    .locals 0
    .param p1, "windowless"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    .line 569
    return-void
.end method

.method public startDozing()V
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 628
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 3

    .prologue
    .line 654
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v1, :cond_0

    .line 655
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 657
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final wakeUp()V
    .locals 1

    .prologue
    .line 888
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 887
    return-void
.end method
