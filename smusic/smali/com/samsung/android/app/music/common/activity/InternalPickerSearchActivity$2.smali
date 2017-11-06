.class Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;
.super Ljava/lang/Object;
.source "InternalPickerSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$200(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;I)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$302(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;I)I

    .line 213
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "232"

    const-string v2, "1551"

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$200(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->access$302(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;I)I

    .line 220
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "232"

    const-string v2, "1552"

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x7f12004e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
