.class Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;
.super Ljava/lang/Object;
.source "MusicVideoContentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

.field final synthetic val$artistDetailMusicVideo:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

.field final synthetic val$mvId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;->val$mvId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;->val$artistDetailMusicVideo:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;->val$mvId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;->val$artistDetailMusicVideo:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

    .line 78
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->isExplicit()Z

    move-result v3

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "994"

    const-string v2, "9935"

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
