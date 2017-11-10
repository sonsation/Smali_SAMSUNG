.class Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "DualEffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/DualEffectListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;Lcom/sec/android/app/camera/menu/DualEffectListMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 12

    if-nez p2, :cond_5

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v4}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v5}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v10, 0x0

    mul-int/lit8 v11, p1, 0x3

    :goto_0
    const/4 v2, 0x3

    if-ge v10, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-ge v11, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v4}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v4

    mul-int/2addr v4, v10

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v5}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v6}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v6

    int-to-float v6, v6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$500(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setMute(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x7f

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setTag(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v2, p1, 0x3

    add-int v11, v2, v10

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    new-instance v9, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-direct {v9, v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setMute(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_3
    :goto_2
    return-object v9

    :cond_4
    move-object v9, v0

    goto :goto_2

    :cond_5
    move-object v9, p2

    goto :goto_2
.end method

.method public reset()V
    .locals 0

    return-void
.end method
