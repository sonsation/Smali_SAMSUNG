.class Lcom/android/settings/dashboard/DashboardAdapter$3;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$holder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;
    .param p2, "val$holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$holder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set1(Lcom/android/settings/dashboard/DashboardAdapter;Z)Z

    .line 468
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$holder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1103db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get1(Lcom/android/settings/dashboard/DashboardAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set0(Lcom/android/settings/dashboard/DashboardAdapter;I)I

    .line 470
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 466
    return-void
.end method
