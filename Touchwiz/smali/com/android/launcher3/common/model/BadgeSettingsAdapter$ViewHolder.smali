.class public Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BadgeSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final appIcon:Landroid/widget/ImageView;

.field public mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

.field public final mSwitch:Landroid/widget/Switch;

.field public final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    .line 93
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    const v0, 0x7f110060

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 95
    const v0, 0x7f110061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f110062

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 97
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
