.class Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;
.super Ljava/lang/Object;
.source "InternalPickerSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$100(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_checked_item_ids"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    .line 91
    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$000(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$100(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    return-void
.end method
