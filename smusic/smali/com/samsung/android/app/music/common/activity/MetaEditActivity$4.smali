.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;
.super Ljava/lang/Object;
.source "MetaEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "MetaEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spinner item selected position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, "encoding":Ljava/lang/String;
    const-string v1, "None"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1100(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V

    .line 191
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .line 192
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4163"

    .line 193
    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1502(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1300(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
