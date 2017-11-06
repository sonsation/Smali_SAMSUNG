.class final Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->convertToTranslucent(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;Landroid/app/ActivityOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$1;->val$listener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTranslucentConversionComplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$1;->val$listener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 30
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
