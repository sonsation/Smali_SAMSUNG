.class Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->access$000(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->access$002(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;Z)Z

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->access$100(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->access$200(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;I)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
