.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    .line 135
    return-void
.end method
