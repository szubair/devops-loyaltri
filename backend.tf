terraform { 
  cloud { 
    organization = "testorg-testapp-dev" 

    workspaces { 
      name = "testorg-testapp-dev-workspace" 
    } 
  } 
}
