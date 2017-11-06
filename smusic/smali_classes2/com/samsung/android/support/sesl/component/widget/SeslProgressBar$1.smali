.class Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;
.super Landroid/util/FloatProperty;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    .prologue
    .line 2255
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2246
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;->get(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;F)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p2, "value"    # F

    .prologue
    .line 2249
    sget v0, Lcom/samsung/android/support/sesl/R$id;->progress:I

    invoke-static {p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;IF)V

    .line 2250
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$802(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;F)F

    .line 2251
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 2246
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;->setValue(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;F)V

    return-void
.end method
