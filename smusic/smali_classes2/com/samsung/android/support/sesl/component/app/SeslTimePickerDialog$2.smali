.class Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$2;
.super Ljava/lang/Object;
.source "SeslTimePickerDialog.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->access$102(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;Z)Z

    .line 168
    return-void
.end method
