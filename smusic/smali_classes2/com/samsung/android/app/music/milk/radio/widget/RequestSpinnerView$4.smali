.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;
.super Ljava/lang/Object;
.source "RequestSpinnerView.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setupListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;)V
    .locals 8
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$600(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget v1, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$302(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;I)I

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$800(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;I)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setLyricsLabelbyTrackId(I)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget-object v1, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$902(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget-object v1, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1002(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)I

    move-result v1

    iget-object v2, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->trackId:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    iget-boolean v7, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isMyStation:Z

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;->onSpinnerItemSelected(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dismissSpinner()V

    goto :goto_0
.end method
