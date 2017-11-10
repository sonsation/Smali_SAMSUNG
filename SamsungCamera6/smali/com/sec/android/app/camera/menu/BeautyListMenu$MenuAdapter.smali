.class Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "BeautyListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;Lcom/sec/android/app/camera/menu/BeautyListMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$900(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$900(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1000(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v3, 0x1967

    if-ne v1, v3, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1100(Lcom/sec/android/app/camera/menu/BeautyListMenu;)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1200(Lcom/sec/android/app/camera/menu/BeautyListMenu;)F

    move-result v5

    const/4 v8, 0x2

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->updateToggleButton(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1300(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1400(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setRotatable(Z)V

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1000(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1100(Lcom/sec/android/app/camera/menu/BeautyListMenu;)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1200(Lcom/sec/android/app/camera/menu/BeautyListMenu;)F

    move-result v5

    move v3, v2

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
