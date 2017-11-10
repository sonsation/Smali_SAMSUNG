.class Lcom/samsung/android/glview/GLContext$7;
.super Landroid/view/OrientationEventListener;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLContext;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$7;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "GLContext"

    const-string v1, "android onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$7;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLContext;->access$900(Lcom/samsung/android/glview/GLContext;I)V

    goto :goto_0
.end method
