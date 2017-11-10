.class Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;
.super Landroid/content/BroadcastReceiver;
.source "AbstractBaseMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->onClick(Lcom/samsung/android/glview/GLView;)Z

    return-void
.end method
