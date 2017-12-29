.class Lcom/samsung/android/settings/multisound/SASButtonPreference$1;
.super Ljava/lang/Object;
.source "SASButtonPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/SASButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/SASButtonPreference;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$1;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$1;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V

    .line 51
    return-void
.end method
