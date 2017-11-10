.class Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;
.super Ljava/lang/Object;
.source "ProColorTuneList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProColorTuneList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTuneListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProColorTuneList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProColorTuneList;Lcom/sec/android/app/camera/menu/ProColorTuneList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$100(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 9

    const/4 v2, 0x0

    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$100(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$200(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v3, 0xfa0

    if-ne v1, v3, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$300(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$400(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$400(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v5}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$500(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v5, v3

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->setTag(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$700(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->setColorTuneItemSelectListener(Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$200(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v3, 0xfa7

    if-ne v1, v3, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$300(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$400(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$600(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v5}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$500(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v5, v3

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$200(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$100(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$300(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$400(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$600(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$200(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->access$100(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
