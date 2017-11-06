.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;
.super Ljava/lang/Object;
.source "RadioMainDownloadMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    .line 100
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTrackDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 101
    return-void
.end method
