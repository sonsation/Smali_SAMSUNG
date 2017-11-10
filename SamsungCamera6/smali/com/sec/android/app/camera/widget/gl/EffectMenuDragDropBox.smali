.class public Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
.super Lcom/sec/android/app/camera/widget/gl/DragDropBox;
.source "EffectMenuDragDropBox.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;-><init>(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    return-void
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDraggable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDroppable(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method public getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    return-object v0
.end method

.method protected onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDraggable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDroppable(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method
