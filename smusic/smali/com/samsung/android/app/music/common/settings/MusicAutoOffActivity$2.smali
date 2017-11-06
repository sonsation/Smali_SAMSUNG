.class Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;
.super Ljava/lang/Object;
.source "MusicAutoOffActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSelectedPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    .line 185
    return-void
.end method

.method public onTimeSet(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v3, 0x1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    const v1, 0x36ee80

    mul-int/2addr v1, p2

    const v2, 0xea60

    mul-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->access$100(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;I)V

    .line 170
    if-gtz p2, :cond_0

    if-lez p3, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->access$200(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->access$302(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;I)I

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->access$402(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;I)I

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->onBackPressed()V

    .line 180
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->access$000(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    goto :goto_0
.end method
