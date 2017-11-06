.class Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$1;
.super Ljava/lang/Object;
.source "CoverArtViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->finish()V

    .line 32
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "902"

    const-string v2, "9021"

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
