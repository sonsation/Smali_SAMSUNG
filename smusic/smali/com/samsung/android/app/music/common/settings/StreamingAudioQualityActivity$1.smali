.class Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;
.super Ljava/lang/Object;
.source "StreamingAudioQualityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    .line 70
    .local v0, "networkType":Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;

    sget-object v2, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->access$000(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;

    sget-object v2, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->access$000(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;

    sget-object v2, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->access$000(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f12049f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
