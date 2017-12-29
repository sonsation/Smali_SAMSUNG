.class Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;
.super Ljava/lang/Object;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(I)Z
    .locals 3
    .param p1, "startPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 271
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p1, v2, :cond_1

    const/4 v0, 0x1

    .line 272
    .local v0, "available":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get2(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    :cond_0
    return v1

    .end local v0    # "available":Z
    :cond_1
    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public canDrop(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 278
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 279
    if-lez p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 280
    .local v0, "available":Z
    :goto_0
    return v0

    .end local v0    # "available":Z
    :cond_1
    move v0, v1

    .line 278
    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->moveItem(II)V

    .line 284
    return-void
.end method
