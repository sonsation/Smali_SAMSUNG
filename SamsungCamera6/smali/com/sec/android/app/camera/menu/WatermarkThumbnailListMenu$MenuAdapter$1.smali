.class Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter$1;
.super Ljava/lang/Object;
.source "WatermarkThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x1

    return v0
.end method
