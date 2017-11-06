.class abstract Lcom/samsung/android/app/music/common/MusicApplication$ActivityLifeCycleCallbacksAdapter;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/MusicApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActivityLifeCycleCallbacksAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/MusicApplication;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/MusicApplication;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/common/MusicApplication$ActivityLifeCycleCallbacksAdapter;->this$0:Lcom/samsung/android/app/music/common/MusicApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/MusicApplication;Lcom/samsung/android/app/music/common/MusicApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/MusicApplication;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/MusicApplication$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/MusicApplication$ActivityLifeCycleCallbacksAdapter;-><init>(Lcom/samsung/android/app/music/common/MusicApplication;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 274
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 262
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 254
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 266
    return-void
.end method
