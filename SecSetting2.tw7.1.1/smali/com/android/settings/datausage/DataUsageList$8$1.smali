.class Lcom/android/settings/datausage/DataUsageList$8$1;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataUsageList$8;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/datausage/DataUsageList$8;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$8$1;->this$1:Lcom/android/settings/datausage/DataUsageList$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$8$1;->this$1:Lcom/android/settings/datausage/DataUsageList$8;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageList;->-wrap1(Lcom/android/settings/datausage/DataUsageList;I)V

    .line 959
    return-void
.end method