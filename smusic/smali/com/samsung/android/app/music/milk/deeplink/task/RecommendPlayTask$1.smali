.class Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;
.super Ljava/lang/Object;
.source "RecommendPlayTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartStationCreated(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "coverUrl"    # Ljava/lang/String;
    .param p3, "created"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method
