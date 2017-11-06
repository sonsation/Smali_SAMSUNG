.class Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$1;
.super Ljava/lang/Object;
.source "DownloadAudioQualityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->access$000(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->access$000(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f12049f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
