.class Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;
.super Ljava/lang/Object;
.source "SpinnerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 103
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    .line 105
    .local v0, "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;->onClick(Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;)V

    .line 108
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9001"

    iget-object v4, v0, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    move-result-object v1

    const-string v2, "Station List"

    const-string v3, "Select Station"

    iget-object v4, v0, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->hitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    :cond_0
    return-void
.end method
