.class Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;
.super Ljava/lang/Object;
.source "BadgeSettingsFragment.java"

# interfaces
.implements Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/BadgeSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    .line 88
    return-void
.end method
