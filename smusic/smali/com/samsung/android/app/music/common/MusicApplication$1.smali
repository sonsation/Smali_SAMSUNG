.class Lcom/samsung/android/app/music/common/MusicApplication$1;
.super Lcom/samsung/android/app/music/common/MusicApplication$ActivityLifeCycleCallbacksAdapter;
.source "MusicApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/MusicApplication;->handleUiProcessByFeature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/MusicApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/MusicApplication;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/MusicApplication;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/common/MusicApplication$1;->this$0:Lcom/samsung/android/app/music/common/MusicApplication;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/MusicApplication$ActivityLifeCycleCallbacksAdapter;-><init>(Lcom/samsung/android/app/music/common/MusicApplication;Lcom/samsung/android/app/music/common/MusicApplication$1;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isAllowScreenRotation(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
