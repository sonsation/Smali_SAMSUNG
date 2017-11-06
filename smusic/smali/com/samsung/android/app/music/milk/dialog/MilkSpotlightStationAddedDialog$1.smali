.class Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;
.super Ljava/lang/Object;
.source "MilkSpotlightStationAddedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

.field final synthetic val$checkboxImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 75
    .local v0, "isChecked":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    if-nez v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .line 80
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110159

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->access$200(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.show_spotlight_station_added_dialog"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 88
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    const v2, 0x7f020081

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->val$checkboxImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .line 85
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11015a

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method
