.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$1;
.super Ljava/lang/Object;
.source "RadioMainDownloadMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    const-string v0, "RadioMainDownloadMenu"

    const-string/jumbo v1, "onClick : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9009"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->launchDownload()V

    .line 44
    return-void
.end method
