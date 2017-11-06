.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "FlatResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatResizeLayoutExploreByTouchHelper"
.end annotation


# static fields
.field public static final ACCESIBILITY_INVISIBLE:D = 0.4


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mHasAccessiblityFocus:Z

.field private mIndex:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Landroid/view/View;)V
    .locals 1
    .param p2, "forView"    # Landroid/view/View;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .line 1110
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1089
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    .line 1111
    return-void
.end method

.method private getModelForVirtualId(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 5
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1114
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 1115
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->isValidModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1116
    iget v3, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mAccessibilityId:I

    if-ne v3, p1, :cond_1

    .line 1136
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :goto_0
    return-object v1

    .line 1124
    .restart local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;

    .line 1125
    .local v0, "cm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->isValidModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mAccessibilityId:I

    if-ne v4, p1, :cond_2

    move-object v1, v0

    .line 1131
    goto :goto_0

    .line 1136
    .end local v0    # "cm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Z
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .prologue
    .line 1101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mContentDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mContentDescription:Ljava/lang/String;

    .line 1102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1270
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1271
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    return-void
.end method

.method private setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1275
    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1276
    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1278
    return-void
.end method

.method private updateAccessibilityFocus(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1247
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1267
    :goto_0
    return-void

    .line 1253
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mHasAccessiblityFocus:Z

    .line 1254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;I)I

    goto :goto_0

    .line 1260
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mHasAccessiblityFocus:Z

    .line 1261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;I)I

    goto :goto_0

    .line 1247
    nop

    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, -0x80000000

    .line 1141
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return v2

    .line 1148
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 1149
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    invoke-virtual {v0, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isTouched(FFI)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    .line 1150
    .local v1, "t":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 1155
    iget v2, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAccessibilityId:I

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1174
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasAccessiblityFocus()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mHasAccessiblityFocus:Z

    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1325
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v0

    .line 1333
    :cond_1
    const/16 v2, 0x10

    if-ne p2, v2, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move v0, v1

    .line 1340
    goto :goto_0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    const-string v1, "SMUSIC-FlatResizeLayoutAccessibility"

    const-string v2, "Not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V

    .line 1243
    :goto_0
    return-void

    .line 1209
    :cond_0
    const/4 v0, 0x0

    .line 1213
    .local v0, "model":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    if-nez v0, :cond_1

    .line 1214
    const-string v1, "SMUSIC-FlatResizeLayoutAccessibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPopulateEventForVirtualView - Unable to find model for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->updateAccessibilityFocus(ILandroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V

    .line 1222
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->updateAccessibilityFocus(ILandroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/16 v9, 0x10

    .line 1283
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1284
    const-string v6, "SMUSIC-FlatResizeLayoutAccessibility"

    const-string v7, "Not initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V

    .line 1320
    :goto_0
    return-void

    .line 1288
    :cond_0
    const/4 v3, 0x0

    .line 1292
    .local v3, "model":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;
    if-nez v3, :cond_1

    .line 1293
    const-string v6, "SMUSIC-FlatResizeLayoutAccessibility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPopulateNodeForVirtualView Unable to find model for id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getSelectedAlbumSize()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 1297
    .local v1, "halfSize":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v6

    sub-int v2, v6, v1

    .line 1298
    .local v2, "left":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v6

    add-int v4, v6, v1

    .line 1299
    .local v4, "right":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v6

    sub-int v5, v6, v1

    .line 1300
    .local v5, "top":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v6

    add-int v0, v6, v1

    .line 1301
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1303
    invoke-virtual {p2, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1305
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    .end local v0    # "bottom":I
    .end local v1    # "halfSize":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->updateBoundsRect(Landroid/graphics/Rect;I)V

    .line 1310
    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->mContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p2, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0
.end method
