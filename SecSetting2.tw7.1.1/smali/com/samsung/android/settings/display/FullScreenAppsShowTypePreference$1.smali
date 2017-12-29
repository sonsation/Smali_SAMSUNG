.class Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;
.super Ljava/lang/Object;
.source "FullScreenAppsShowTypePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    if-eq v0, p3, :cond_0

    .line 89
    const-string/jumbo v0, "FullScreenAppsShowTypePreference"

    const-string/jumbo v1, "onItemSelected show type : 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-nez p3, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iput v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)Landroid/os/Handler;

    move-result-object v0

    .line 97
    const/16 v1, 0x3e9

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

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
    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
