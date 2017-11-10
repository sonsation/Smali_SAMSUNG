.class Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;
.super Ljava/lang/Object;
.source "WatermarkThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem$TabItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabItemSelected(Lcom/samsung/android/glview/GLView;I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const-string v1, "WatermarkThumbnailListMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabItemSelected modeId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkCategory()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkCategory(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkCategory()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$700(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2100(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    if-le v0, p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1, v7, v4}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;II)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2000(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1, v5, v6}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I

    move-result v1

    if-ne v1, v4, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1, v4, v7}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v1, v6, v5}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;II)V

    goto :goto_0
.end method
